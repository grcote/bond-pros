ActionMailer::Base.smtp_settings = {
    :address							=> "smtp.gmail.com",
    :port									=> 587,
    :domain								=> "pack171boulder.org",
    :user_name						=> "chairman@pack171boulder.org",
    :password							=> "packinfo",
    :authentication				=> "plain",
    :enable_starttls_auto	=> true
  }