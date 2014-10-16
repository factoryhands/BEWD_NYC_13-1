class Building
  attr_accessor :building_name, :building_address, :apartments


  def initialize(building_name, building_address)
    @building_name = building_name
    @building_address = building_address
    @apartments=[]
  end

  def view_apartments
    @apartments.each do |apt|
      puts "Number: #{apartment.number}" 
      puts "Rent: #{apartment.rent}"
      puts "Square Feet: #{apartment.square_feet}"
    end
  end
end

