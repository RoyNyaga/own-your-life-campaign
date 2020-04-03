class PagesController < ApplicationController
  def home
  	@frame = "https://www.youtube.com/embed/9YffrCViTVk"
  	@message = Message.new
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
    @message = Message.new
  end

end
