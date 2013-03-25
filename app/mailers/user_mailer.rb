class UserMailer < ActionMailer::Base
  default :from => "no-reply@ecs-solutions.hu"

  def user_created(user)
    @user=user
    @greeting="Hey Csaniiiiiiii!"
    @text="Itt egy emberke, aki friss:"
    mail(:to => "info@ecs-solutions.hu", :subject => "Arc")
  end

end
