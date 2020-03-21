class PagesController < ApplicationController
  def home
  	@frame = "https://www.youtube.com/embed/9YffrCViTVk"
  	@message = Message.new
  end

  def about
  end

  def contact
  end
end
