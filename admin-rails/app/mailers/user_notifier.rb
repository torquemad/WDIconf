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

  def send_payment_email(params)
    @params = params

    @first_name = params["payment-firstName"]
    @surname = params["payment-surname"]
    @email = params["payment-email"]
    @full_name = params["payment-fullName"]
    @card_number = params["payment-cardNumber"]
    @card_month = params["payment-month"]
    @card_ccv = params["payment-ccv"]

    mail( :to      => @email,
          :subject => 'WDIConf: Payment Confirmation')

  end

end


