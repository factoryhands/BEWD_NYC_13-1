class User

  attr_accessor :first_name, :last_name, :full_name, :phone_number

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = "#{first_name} #{last_name}"
  end

  #method to get user's phone number after asking if they like cats or not
  def get_phone_number
    puts "Do you like cats, #{@first_name}?"
    user_response = gets.strip.downcase
    if user_response == 'yes'
      puts "COOL! What's your number #{@first_name}?"
      # validate phone number
      number = parse_phone_number gets.strip
      if number_is_valid? number
        @phone_number = number 
         puts "LOOK OUT #{@full_name}! CAT PICS INCOMING!"
      else 
        @phone_number = nil
      end

    elsif user_response =='no'
      puts "*sad face emoji*. Bye"
      exit 
    else
      puts "Choose a real answer sucka, yes or no."
    end
  end

  #parses out any character that isn't a number and returns it as only digits
  def parse_phone_number number
    number.gsub(/\D/, '')
  end

  # checks if number is a valid phone number with area code and whatnot
  def number_is_valid? number
    if number.length != 10
      false
    else 
      true
    end
  end
end
