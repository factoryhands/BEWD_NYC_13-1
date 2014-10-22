require 'twilio-ruby'
require 'dotenv'
require 'pry'
Dotenv.load(".env")

class TwilioService

  attr_accessor :client, :TWILIO_ACCOUNTSID, :TWILIO_AUTHOTOKE

  def initialize 
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNTSID'], ENV['TWILIO_AUTHOTOKE']
  end






end
