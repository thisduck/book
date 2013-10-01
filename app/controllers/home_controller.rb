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
end
