class ListMailer < ApplicationMailer
  def create_confirmation
    @list = params[:list]

    mail(
      to:       @list.patient.email,
      subject:  "list"
    )
  end
end
