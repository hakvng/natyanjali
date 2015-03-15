class UserMailer < ActionMailer::Base
  default from: 'notifications@natyanjali.in'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://natyanjali.in'
    mail(to: @user.email, subject: 'Welcome to natyanjali.in')
  end

  def registration_success_email(user)
    @user = user
    mail(to: @user.email, subject: 'Registration Success')
  end
end
