class PrivateController < ApplicationController
  before_filter :authenticate_user!

  def serve
    send_data(File.read("#{RAILS_ROOT}#{request.fullpath}"))
    #puts "#{Rails.root}#{request.fullpath}"
    #render :nothing => true 
  end

end
