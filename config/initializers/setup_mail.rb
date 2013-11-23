ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :authentication => :plain,
    :domain => 'gmail.com',
    :user_name => '<>', #default from
    :password =>'<>'

}
#send email
ActionMailer::Base.default_url_options = {:host=> 'localhost:3000'}
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_deliveries_errors = true
ActionMailer::Base.default :charset=> "utf-8"