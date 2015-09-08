class HomeController < ApplicationController
  impressionist

  def index
  end

  def landing
    if ['volume-one', 'volume-two'].include? params[:volume]
      render params[:volume]
    end
  end

  def book
    params[:format] ||= "pdf"
    params[:volume].gsub!("-", ".")
    
    if params[:format] == "pdf"
      send_file "#{Rails.root}/app/files/nothing.#{params[:volume]}.pdf"
    end
  end

  def audio
    send_file "#{Rails.root}/app/files/nothing.volume.one.audio.zip"
  end
end
