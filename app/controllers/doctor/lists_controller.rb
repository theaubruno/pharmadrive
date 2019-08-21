class Doctor::ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:id])
    # @patient = Patient.find(@patient_id.id)
    @user = current_user

    # trouver un patient
    # l'asocier à ta liste
    # associer le user à la liste
    # passser tous ls params à ta liste

    raise
    if @list.save
      redirect_to doctor_patient_path(@list)
    else
      render 'doctor/patients/show'
    end

    # redirect_to list_path(@list)
  end

  def edit
  end

  def update
    @list.update(list_params)

   # redirect_to user_path(@user)
  end

  def destroy
    @list.destroy

    # redirect_to root_path
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:user_id, :patient_id)
  end
end
