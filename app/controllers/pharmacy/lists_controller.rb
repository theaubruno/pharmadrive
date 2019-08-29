class Pharmacy::ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  # before_action :set_list, only: [:archives_show]

  def index
    @lists = current_user.lists
    # @lists = List.all
    # order('List.patient.first_name ASC')
  end

  def archives
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @patients = current_user.pharmacy_patients.where(sql_query, query: "%#{params[:query]}%").order('last_name ASC')
    else
     @patients = current_user.pharmacy_patients
   end
  end

  def archives_show
    @patient = Patient.find(params[:query].to_i)
    @lists = @patient.lists
  end

  def show
  end

  def edit
  end

  def update
    @list.update(list_params)
    if @list.delivered?
      ListMailer.with(list: @list).mail_delivered.deliver_now
    elsif @list.ready?
      ListMailer.with(list: @list).mail_ready.deliver_now
    end
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
    params.require(:list).permit(:patient_id, :prescribed_at, :user_id, :delivered_at, :ready_at, :format)
  end
end
