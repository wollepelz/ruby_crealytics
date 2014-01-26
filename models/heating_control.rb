# class to work with the "Heating.class"

class My_heating_controller

  # Array for the objects
  @@my_heating_array = Array.new
  
  # add a heating with name, area and temperature
  def add_heating name, ar, temperature
    # make new object
    heating_temp = My_heating.new(name, ar, temperature)
    # put the new object into the array
    @@my_heating_array.push(heating_temp)
  end
  
  
  # helper method to show all values out of the "object array"
  # isn't really needed
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
  
  # function to calculate....
  def calculate_average_temperature my_array
    @@average_temperature = ((my_array.get_num_radiator * 35.4 
                              + my_array.get_num_ground * 25.0)/my_array.get_num).round(2)
  end
  
  # another function to calculate....
  def calculate_global_efficiency my_array
    @@global_efficiency = my_array.get_num_radiator * 20.0
                          + my_array.get_num_ground * 180.0
  end
 
end
