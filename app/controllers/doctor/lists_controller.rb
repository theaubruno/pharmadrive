class Doctor::ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy, :map]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    # @patient = Patient.find(@patient_id.id)
       # trouver un patient
    @patient = Patient.find(params[:patient_id])
    # l'asocier à ta liste
    @list.patient_id = @patient.id
        # associer le user à la liste
    User.find_by(role: :pharmacy)
    # passser tous ls params à ta liste
    if @list.save
      ListMailer.with(list: @list).create_confirmation.deliver_now
     redirect_to doctor_patient_path(@patient)

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

def listpdf

    @list = List.find(params[:list_id])

      respond_to do |format|
            format.html
            format.pdf do
                render pdf: "Ordonnance du #{@list.created_at}",
                page_size: 'A4',
                template: "lists/listpdf.html.erb",
                layout: "listpdf.pdf.erb",
                orientation: "Portrait",
                lowquality: true,
                zoom: 1,
                dpi: 75
            end
          end
  end


  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:note, :user_id, drugs_attributes: [:id, :drug_name, :dosage, :posology, :quantity, :qsp, :_destroy])

  end
end
