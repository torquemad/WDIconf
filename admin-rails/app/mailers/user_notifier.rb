class UserNotifier < ApplicationMailer
  default :from => 'teamuxb@gmail.com'

  # def send_signup_email(user)
  #   @user = user
  #   mail( :to      => @user.email,
  #         :subject => 'omg such wow')
  # end

  def send_contact_email(params)
    @params = params
    
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]

    mail( :to      => @email,
          :subject => 'WDIConf: Automated reply')

  end

end
