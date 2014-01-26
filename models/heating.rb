class My_heating
  
  # the constructor of the object:
  def initialize hname = '', ar = 0, temperature = 0
    @heating_name        = hname
    @heating_area        = ar
    @heating_temperature = temperature
    
    @num_radiator = rand(1..9)
    @num_ground = rand(1..9)
    @num = @num_radiator + @num_ground
  end
  
  # methods to get the data out of the object:
  def get_name
    @heating_name
  end
  
  def get_area
    @heating_area
  end
  
  def get_temperature
    @heating_temperature
  end
  
  def get_num_radiator
    @num_radiator
  end
  
  def get_num_ground
    @num_ground
  end
  
  def get_num
    @num
  end
  
  # helper function to get all the data 
  def show_values
    puts "Name: " + @heating_name
    puts " Area: " + @heating_area.to_s
    puts "  Temperature: " + @heating_temperature.to_s
    puts "Radiator: " + @num_radiator.to_s
    puts " Ground: " + @num_ground.to_s
    puts "  Num: " + @num.to_s
  end
  
end