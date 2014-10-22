#THIS IS PROBABLY MAD DISORGANIZED IN TERMS OF CLASSES AND OBJECTS BUT I'M STILL A NOOB

require_relative 'lib/reddit'
require_relative 'lib/user'
require_relative 'lib/twilio_service'

class CatFacts

  attr_accessor :user, :reddit, :first_name, :last_name

  def initialize
    @reddit=Reddit.new
    @reddit.get_pictures
  end

#creates user object
  def create_user
    puts "What is your first name?"
    first_name = gets.strip

    puts "What is your last name?"
    last_name = gets.strip

    @user = User.new(first_name, last_name)
    until @user.phone_number != nil
      @user.get_phone_number
    end
  end

#sends message by using Twilio API WITH SUPER SPECIAL EASTER EGG
  def send_message
    twilio_service = TwilioService.new 
    twilio = twilio_service.client
    if @user.first_name.downcase == 'brooks' && @user.last_name.downcase =='swinnerton'
      
      twilio.messages.create(
        from: '+18593501304',
        to: "+1#{@user.phone_number}",
        body: 'LOOK AT THIS CUTIE!',
        media_url: 'http://media-cache-ec0.pinimg.com/avatars/bswinnerton-57_140.jpg'
        )
    else
      twilio.messages.create(
        from: '+18593501304',
        to: "+1#{@user.phone_number}",
        body: 'LOOK AT THIS CUTIE!',
        media_url: @reddit.first_picture
        )
    end
  end
end

  puts "WELCOME TO CUTE CATS 4EVER! \n \n"
  puts "Created by Jennifer Spriggs. \n \n"
  catfacts = CatFacts.new
  catfacts.create_user
  catfacts.send_message






