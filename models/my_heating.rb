class My_heating
  
  def initialize hname = '', ar = 0, temperature = 0
    @heating_name        = hname
    @heating_area        = ar
    @heating_temperature = temperature
    
    @num_radiator = rand(1..9)
    @num_ground = rand(1..9)
    @num = @num_radiator + @num_ground
  end
  
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
  
  def show_values
    puts "Name: " + @heating_name
    puts " Area: " + @heating_area.to_s
    puts "  Temperature: " + @heating_temperature.to_s
    puts "Radiator: " + @num_radiator.to_s
    puts " Ground: " + @num_ground.to_s
    puts "  Num: " + @num.to_s
  end
  
end

class My_heating_controller
  
  @@my_heating_array = Array.new
  
  def add_heating name, ar, temperature
    heating_temp = My_heating.new(name, ar, temperature)
    @@my_heating_array.push(heating_temp)
  end
  
  def show_all_values my_array
    puts "\nAll Values: "
    puts "-----------"
    my_array.each do |value|  
      puts "Name: " + value.get_name.to_s
      puts " Area: " + value.get_area.to_s
      puts "  Temperature: " + value.get_temperature.to_s
      puts "Radiator: " + value.get_num_radiator.to_s
    puts " Ground: " + value.get_num_ground.to_s
    puts "  Num: " +  value.get_num.to_s + "\n\n"
    end       
  end
  
  def calculate_average_temperature my_array
    @@average_temperature = ((my_array.get_num_radiator * 35.4 
                              + my_array.get_num_ground * 25.0)/my_array.get_num).round(2)
  end
  
  #  @@global_efficiency = @heating['num_radiator'] * 20.0 
  #                        + @heating['num_ground'] * 180.0
  
  def calculate_global_efficiency my_array
    @@global_efficiency = my_array.get_num_radiator * 20.0
                          + my_array.get_num_ground * 180.0
  end
 
end

my_heating = My_heating.new('Wooden', 20, 21.0)
# my_heating.show_values

temp = My_heating_controller.new

myVar = temp.add_heating('Holz', 5, 10)

myVar = temp.add_heating('Kohle', 7, 10.1)

myVar = temp.add_heating('Zentralheizung', 7, 10.1)

puts myVar.length

temp.show_all_values(myVar)

# p myVar

puts "Average Temperature: " + temp.calculate_average_temperature(myVar[1]).to_s
puts "Global_efficiency: " + temp.calculate_global_efficiency(myVar[1]).to_s