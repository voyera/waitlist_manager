class TwillioController < ApplicationController
  def index
  end

  def test
    # Get your Account Sid and Auth Token from twilio.com/user/account
    account_sid = ENV['twillio_access_id']
    auth_token = ENV['twillio_auth_token']
    
    begin
      @client = Twilio::REST::Client.new account_sid, auth_token
      
      @client.account.messages.create(body: params[:message],
        to: params[:number],     # Replace with your phone number
        from: "+16136930396")   # Replace with your Twilio number
    
    rescue Twilio::REST::RequestError => e
      flash[:notice] = e.message
    end
  end
end
