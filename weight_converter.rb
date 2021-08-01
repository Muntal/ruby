#! /usr/bin/ruby

cheetshit = {
     "kg" => {"qtyg" => 1000, "qtylb" => 2.20462, "qtyoz" => 35.274 },
     "g" => {"qtykg" => 0.001, "qtylb" => 0.00220462, "qtyoz" => 0.035274 },
     "lb" =>{ "qtykg" => 0.453592, "qtyg" => 453.592, "qtyoz" => 16  },
     "oz" => { "qtylb" =>  0.0625, "qtykg" => 0.0283495, "qtyg" => 28.3495}            
}

puts "Select unit\n"
puts "kg | g | lb | oz\n"
unit = gets.chomp()
puts "To what you want to convert?\n"
case unit
when "kg" 
    puts "g | lb | oz\n"
when "g"
    puts "kg | lb | oz\n"
when "lb"
    puts "kg | g | oz\n"
when "oz"
    puts "kg | g | lb\n"
else
    puts "#{unit} is not an available unit. Exiting..."
    exit
end
convert = gets.chomp()
if convert == "kg" || convert == "lb" || convert == "g" || convert == "oz" 
puts "Input the amount to convert from #{unit} to #{convert}\n"
amount = Float(gets.chomp())
result = amount * Float(cheetshit[unit]["qty#{convert}"])
puts "#{result} #{convert} "
else 
    puts "#{convert} is not an available unit. Exiting..."
    exit
end