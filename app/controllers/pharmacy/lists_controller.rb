class Pharmacy::ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = current_user.lists
    # @lists = List.all
    #order('List.patient.first_name ASC')
  end

  def archives
    @patients = Patient.all
  end

  def archives_show
    @lists = List.all
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

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:patient_id, :prescribed_at, :user_id, :delivered_at, :ready_at)
  end
end
