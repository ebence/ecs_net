class PrivateController < ApplicationController
  before_filter :authenticate_user!

  def serve
    send_file("#{Rails.root}#{request.fullpath}")
    #puts "#{Rails.root}#{request.fullpath}"
    #render :nothing => true 
  end

end
