# variable = "hello"
# p "ello hello" =~ /l{2}/ 
# regex = /l{2}/
# p "bell" =~ /l{2}/ 

# p "ring" =~ /l{2}/ 

# if variable.match?(regex)
#     puts "match" 
# else
#     puts "no match"
# end

# phone_number = '+ 44 20 7946 0234' 

# if phone_number.match?(/^\+\d{2}\s\d{2}\s\d{4}\s\d{4}$/)
#     puts "This is a valid UK international phone number"
# else
#     puts "It's not valid!"
# end

# text = "
# this is a multi-line text
# try to match only this line
# and not the others
# "

# p text =~ /^try .* line$/ 

# match_data = "John Doe".match(/(?<name>\w+) (?<last_name>\w+)$/)
# p match_data[:name]
# p match_data["last_name"]

# name = "Hi Danko"
# p name
# p name.gsub(/\w{5}/, "Mahtab")

# p "Let's play tic tac toe".scan(/t\w\w/)