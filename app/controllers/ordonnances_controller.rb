class OrdonnancesController < ApplicationController
  def index
  end

  def new
    @ordonnance = Ordonnance.create(date: Date.current, patient_id: params[:patient_id], consultation_id: params[:consultation_id])
    authorize @ordonnance
    redirect_to patient_consultation_ordonnance_medicaments_path(@ordonnance.patient_id,@ordonnance.consultation_id,@ordonnance.id)

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
