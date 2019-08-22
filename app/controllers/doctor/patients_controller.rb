class Doctor::PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @patients = Patient.where(sql_query, query: "%#{params[:query]}%").order('last_name ASC')
    else
      @patients = Patient.all.order('last_name ASC')
    end
  end

  def show
    @list = List.new
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.user = current_user
    @patient.save
    redirect_to doctor_patients_path
  end

  def edit
  end

  def update
    @patient.update(patient_params)

    redirect_to doctor_patient_path(@patient)
  end

  def destroy
    @patient.destroy

    # redirect_to root_path
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :email)
  end
end
