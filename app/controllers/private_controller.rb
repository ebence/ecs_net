class PrivateController < ApplicationController
  before_filter :authenticate_user!

  def serve
    send_file("#{RAILS_ROOT}#{request.fullpath}", :x_sendfile => true)
    #puts "#{Rails.root}#{request.fullpath}"
    #render :nothing => true 
  end

end
