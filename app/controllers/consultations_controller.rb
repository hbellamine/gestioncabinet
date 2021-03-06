class ConsultationsController < ApplicationController
  def index
    @consultations =  policy_scope(Consultation).where(patient_id: params[:patient_id], user_id: current_user.id).order('date DESC')
    @patient = Patient.find(params[:patient_id])
  end

  def create
    @consultation = Consultation.new(params_consultation)
    @consultation.user_id = current_user.id
    @consultation.patient = Patient.find(params[:patient_id])
    @consultation.save
    authorize @consultation
    redirect_to new_patient_consultation_ordonnance_path(params[:patient_id],@consultation.id)
  end

  def edit
   @consultation = Consultation.find(params[:id])
   @patient = Patient.find(params[:patient_id])
    authorize @consultation
  end

  def update
        @consultation = Consultation.find(params[:id])
    @consultation.update(params_consultation)
    authorize @consultation
    redirect_to patient_consultations_path
  end


  def new
    @consultation = Consultation.new
    @patient = Patient.find(params[:patient_id])
    authorize @consultation
  end

  def destroy
        @consultation = Consultation.find(params[:id])
    @consultation.destroy
    authorize @consultation
    redirect_to patient_consultations_path
  end

  def show
    @consultation = Consultation.find(params[:id])
    @patient = Patient.find(params[:patient_id])
    @ordonnance = Ordonnance.where(consultation_id: @consultation.id)
    @prescriptions = Prescription.where(ordonnance_id: @ordonnance.ids)

    authorize @consultation

  end


  private

 def params_consultation
    params.require(:consultation).permit(:date, :motif, :diagfinal, :examenclinique,:examencomplementaire, pictures: [])
  end

end

