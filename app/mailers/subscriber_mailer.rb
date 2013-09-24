class SubscriberMailer < ActionMailer::Base
  default :from => "cubmaster@pack171boulder.org"

  def signup_confirmation(new_subscriber)
    @subscriber = new_subscriber

    mail(:to => new_subscriber.email, :subject => "Sign Up Confirmation")
  end
end
