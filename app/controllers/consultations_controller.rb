class ConsultationsController < ApplicationController
  def index
    @consultations = Consultation.where(patient_id: params[:patient_id]).order('date DESC')
    @patient = Patient.find(params[:patient_id])
  end

  def create
    @consultation = Consultation.new(params_consultation)
    @consultation.patient = Patient.find(params[:patient_id])
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
    @consultation = Consultation.find(params[:id])
    @patient = Patient.find(params[:patient_id])
  end


  private

 def params_consultation
    params.require(:consultation).permit(:date, :motif, :examenclinique, :examencomplementaire, pictures: [])
  end

end

