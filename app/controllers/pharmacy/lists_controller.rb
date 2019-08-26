class Pharmacy::ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  # before_action :set_list, only: [:archives_show]

  def index
    @lists = current_user.lists
    # @lists = List.all
  end

  def archives
    @patients = current_user.pharmacy_patients
  end

  def archives_show
    @patient = Patient.find(params[:format].to_i)
    @lists = @patient.lists
  end

  def show
  end

  def edit
  end

  def update
    @list.update(list_params)

    redirect_to pharmacy_lists_path(@pharmacy)
  end

  def destroy
    @list.destroy

    redirect_to pharmacy_lists_path(@pharmacy)
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:patient_id, :prescribed_at, :user_id, :delivered_at, :ready_at)
  end
end
