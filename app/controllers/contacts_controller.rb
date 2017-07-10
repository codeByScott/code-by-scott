class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request

    if @contact.deliver
      flash[:notice] = 'Thank you for your message. I will contact you soon!'
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message. Please try again.'
      render :new
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :message, :nickname)
    end
end
