class MedicamentsController < ApplicationController
  def index

  if !params[:search].nil? and params[:search] != ""
    @medicaments = []
    @medicaments << Medicament.search_by_nom_and_molecule(params[:search])
  else

  end

    @consultation = policy_scope(Consultation).find(params[:consultation_id])
    @patient = policy_scope(Patient).find(params[:patient_id])
    @ordonnance = policy_scope(Ordonnance).find(params[:ordonnance_id])
    @prescriptions = Prescription.where(ordonnance_id: @ordonnance.id)



  end

  def add_prescription
    @prescription = Prescription.new(ordonnance_id: params[:ordonnance_id], medicament_id: params[:medicament_id], dose: params[:dose], duree: params[:duree])
    @prescription.save
    authorize @prescription
    redirect_to patient_consultation_ordonnance_medicaments_path

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end



end

