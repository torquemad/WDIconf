class UserNotifier < ApplicationMailer
  default :from => 'teamuxb@gmail.com'

  def send_signup_email(user)
    @user = user
    mail( :to      => @user.email,
          :subject => 'omg such wow')
  end

end
