# Write your code here.
require 'pry'
katz_deli = []

def line(array_line)

    string_line = "The line is currently: "
    if array_line.length == 0 
        puts "The line is currently empty."
    else
        array_line.each.with_index(1) do |customer, index|
            if index == array_line.length
            string_line << "#{index}. #{customer}"
            else
                string_line << "#{index}. #{customer} "
            end
        end
        puts string_line
    end
end

def take_a_number(array_line, customer_name)
    array_line << customer_name
    puts "Welcome, #{customer_name}. You are number #{array_line.length} in line."

end

def now_serving(array_line)

    if array_line.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array_line[0]}."
        array_line.shift
    end
end



take_a_number(katz_deli, "Sebas")
take_a_number(katz_deli, "Cata")
take_a_number(katz_deli, "Mafe")
line(katz_deli)
# now_serving(katz_deli)
# now_serving(katz_deli)
# now_serving(katz_deli)