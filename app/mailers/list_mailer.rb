class ListMailer < ApplicationMailer
  def create_confirmation
    @list = params[:list]

    mail(
      to:       @list.patient.email,
      subject:  "list"
      )
  end

  def mail_ready
    @list = params[:list]

    mail(
      to:       @list.patient.email,
      subject:  "ready!"
      )
  end

  def mail_delivered
    @list = params[:list]

    mail(
      to:       @list.patient.email,
      subject:  "delivered!"
      )
  end
end
