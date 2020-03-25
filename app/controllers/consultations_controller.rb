class ConsultationsController < ApplicationController
  def index
    @consultations = Consultation.where(patient_id: params[:patient_id])
    @patient = Patient.find(params[:patient_id])
  end

  def create
    @consultation = Consultation.new(params_consultation)
    @consultation.save
    redirect_to patient_consultations_path(params[:patient_id])
  end

  def new
    @consultation = Consultation.new
    @patient = Patient.find(params[:patient_id])
  end

  def destroy
  end

  def show
  end


  private

 def params_consultation
    params.require(:consultation).permit(:date, :motif, :examenclinique, :examencomplementaire, pictures: [])
  end

end

