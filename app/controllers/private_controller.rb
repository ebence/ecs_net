class PrivateController < ApplicationController
  before_filter :authenticate_user!

  def serve
    #  send_data(File.read(File.join(Rails.root,"/assets#{request.fullpath}")))
    ##puts "#{Rails.root}#{request.fullpath}"
    ##render :nothing => true
    #render file: "http://home.mit.bme.hu/~erdos/index.html", layout: false
    require 'open-uri'

    begin
      data = open("http://home.mit.bme.hu/~erdos/EcsNet#{request.fullpath}")
      send_data data.read
    rescue Exception => e
      redirect_to devices_path
    end
  end

end
