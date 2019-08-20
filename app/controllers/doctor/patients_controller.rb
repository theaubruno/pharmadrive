class Doctor::PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(user_params)
    @patient.save

    # redirect_to patient_path(@patient)
  end

  def edit
  end

  def update
    @patient.update(patient_params)

   # redirect_to user_path(@user)
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
    params.require(:patient).permit(:first_name, :last_name, :email, :user_id)
  end
end
