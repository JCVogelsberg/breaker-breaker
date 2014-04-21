class Message < ActiveRecord::Base
  before_create :send_message

private

  def send_message
    response = RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/ACd1c0ca750bf3056c0fa69f3d18e67e0a/Messages.json',
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILIO_AUTH_TOKEN'],
      :payload => { :Body => body,
                    :To => to,
                    :From => from }
  ).execute
  end
end
