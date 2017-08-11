# Load the Rails application.
require_relative 'application'


ActionMailer::Base.smtp_settings = {
  :user_name => 'gbrlmrllo',
  :password => 'easyrent2017',
  :domain => 'localhost:3000',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Initialize the Rails application.
Rails.application.initialize!

