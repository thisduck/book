class HomeController < ApplicationController
  impressionist

  def index
  end

  def book
    params[:format] ||= "pdf"
    
    if params[:format] == "pdf"
      send_file "#{Rails.root}/app/files/nothing.volume.one.d10.pdf"
    end
  end

  def audio
    send_file "#{Rails.root}/app/files/nothing.volume.one.audio.zip"
  end
end
