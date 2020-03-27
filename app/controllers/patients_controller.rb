class PatientsController < ApplicationController
  def index
  if !params[:search].nil? and params[:search] != ""
    @patients = Patient.all.search_by_nom_and_cin(params[:search])
  else
     @patients = Patient.all.order('nom ASC')
  end

  end

  def create
   @patient = Patient.new(params_patient)
    @patient.user = current_user
     @patient.save


   redirect_to patients_path

  end

  def new
    @patient = Patient.new
  end

  def destroy
  end

  def show
  end


private

 def params_patient
    params.require(:patient).permit(:nom, :prenom, :datedenaissance, :age, :sexe, :email, :adresse, :cin)
  end


end
