class PrivateController < ApplicationController
  before_filter :authenticate_user!

  def serve
    send_data(File.read(File.join(Rails.root,"/assets#{request.fullpath}")))
  #puts "#{Rails.root}#{request.fullpath}"
  #render :nothing => true
  end

end
