class MedicamentsController < ApplicationController
  def index
    @medicaments = Medicament.all.order('nom ASC')
    @consultation = Consultation.find(params[:consultation_id])
    @patient = Patient.find(params[:patient_id])
    @ordonnance = Ordonnance.find(params[:ordonnance_id])
    @prescription = Prescription.new
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

private


