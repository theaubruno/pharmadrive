class ListMailer < ApplicationMailer
  def create_confirmation
    @list = params[:list]

    mail(
      to:       @list.patient.email,
      subject:  "Pharmadrive | Votre ordonnance"
      )
  end

  def mail_ready
    @list = params[:list]

    mail(
      to:       @list.patient.email,
      subject:  "Pharmadrive | Votre Ordonnance vous attend"
      )
  end

  def mail_delivered
    @list = params[:list]

    mail(
      to:       @list.patient.email,
      subject:  "Pharmadrive | Votre ordonnance a été retirée"
      )
  end
end
