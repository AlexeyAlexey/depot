# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

Depot::Application.configure do
   config.action_mailer.delivery_method = :smtp

   config.action_mailer.smtp_settings = {
      :address         =>    "smtp.gmail.com",
      :port            =>     587,
      :authentication  =>    "plain",
      :domain          =>    "gmail.com",
      :user_name       =>    "ialexey.kondratenko", 
      :password        =>    "",
      :enable_starttls_auto=> true
   }

end
