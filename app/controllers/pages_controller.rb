class PagesController < ApplicationController
  def home
  	@frame = "https://www.youtube.com/embed/9YffrCViTVk"
  	@message = Message.new
<<<<<<< HEAD
    @invitation = Invitaion.new
=======
    @invitation = Invitation.new
>>>>>>> b0f9d63a677260cc7f7ab3f1c06829a5bf0e1576
  end

  def about
  end

  def contact
    @message = Message.new
  end

  def lifestyle

  end


  def cfg

  end

  def blog
  end 

  def appointment
    @presentation = Presentation.new
  end

end
