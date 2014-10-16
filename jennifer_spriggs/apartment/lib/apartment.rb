class Apartment
  
  attr_accessor :apartment_number, :apartment_square_feet, :apartment_bedrooms, :apartment_bathrooms, :number, :renter, :rent

  def initialize (apartment_number, apartment_square_feet, apartment_bedrooms, apartment_bathrooms)
     @apartment_number = apartment_number
     @apartment_square_feet = apartment_square_feet
     @apartment_bedrooms = apartment_bedrooms
     @apartment_bathrooms = apartment_bathrooms
     @number =@apartment_number
    
    @renter =[]
  end
end
