class PatientsController < ApplicationController
  def index
  if !params[:search].nil? and params[:search] != ""
    @patients = policy_scope(Patient).search_by_nom_and_cin(params[:search])
  else
     @patients = policy_scope(Patient).all.order('nom ASC')
  end

  end

  def create
   @patient = Patient.new(params_patient)
    @patient.user = current_user
    @patient.age = Date.current.year - params[:patient][:datedenaissance].last(4).to_i
     @patient.save

    authorize @patient
   redirect_to patients_path
  end

  def edit
    @patient = Patient.find(params[:id])
    authorize @patient
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(params_patient)
    authorize @patient
    redirect_to patients_path
  end

  def new

    @patient = Patient.new
    authorize @patient

  end

  def destroy
  end

  def show
  end


private

 def params_patient
    params.require(:patient).permit(:nom, :prenom, :datedenaissance, :age, :sexe, :telephone, :email, :adresse, :cin)
  end


end
