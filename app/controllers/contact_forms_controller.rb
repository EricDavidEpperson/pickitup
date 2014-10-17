class ContactFormsController < ApplicationController
  def create_with_mailer
     name = params[:name]
     email = params[:email]
     subject = params[:subject]
     message = params[:message]

     # create a mailer object
     # deliver the mail
     NotifyMe.notification(name, email, subject, message).deliver
   end

   def create
     @contact_form = ContactForm.new(params.require(:contact_form).permit([:name, :email, :subject, :message]))
     @contact_form.deliver if @contact_form.valid?
   end
end
