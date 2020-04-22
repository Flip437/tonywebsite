# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# SMTP settings for gmail
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain => 'localhost:3000',
  :user_name            => ENV['GMAIL_LOGIN'],
  :password             => ENV['GMAIL_PASSWORD'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}