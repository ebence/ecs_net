class PagesController < ApplicationController
  def home
    redirect_to devices_path if current_user
  end
  
  def show
    render params[:page]
  end
end
