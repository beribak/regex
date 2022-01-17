# EXPECTED BEHAVIOR
# french_ssn_info("1 84 12 76 451 089 46")
# => "a man, born in December, 1984 in Seine-Maritime."

require 'yaml' # import yaml class from ruby library

def french_ssn_info(ssn)
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"] 

    departments_hash = YAML.load_file('data/french_departments.yml') # get data from the french_department.yml file into a hash format

    regex = /^(?<gender>[12])\s(?<year>\d{2})\s(?<month>\d{2})\s(?<department>\d{2})\s(\d{3}\s){2}\d{2}$/ # store regex in a variable
    
    ssn_calc = ssn.gsub(" ", "") # get rid of all whitespace in string so we can run arithmetic on the ssn

    key = ((97 - ssn_calc[0...-2].to_i) % 97) == ssn_calc[-2..-1].to_i  # calculate the value of the key, the last two digits,
    # based on the formula (97 - ssn_without_key)%97

    if ssn.match?(regex) && key  # check if the regex match and the key is correct
        info =  ssn.match(regex)

        if info[:gender] == "1" # figure out the gender of the ssn string
            gender_ssn = "man"
        else
            gen_ssn = "woman"
        end
        
        p "a #{gen_ssn}, born in #{months[info[:month].to_i - 1]}, #{info[:year]} in #{departments_hash[info[:department]]}." #interpolate results
    else
        puts "Wrong SSN format!!!"        
    end
    
end

french_ssn_info("1 84 12 76 451 089 46") # correct
french_ssn_info("1 84 12 76 451 089 49") # wrong

