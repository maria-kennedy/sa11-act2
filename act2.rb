# 1.	Extracting Hashtags from a Tweet Replace nil 
#  with the regular expression to extract all hashtags.
puts "Problem 1"
def extract_hashtags(text)
    pattern = /#\w*/
    hashtags = text.scan(pattern)
    hashtags.flatten
end
  
puts extract_hashtags("Love this #beautiful day! #sunny")
  
#######################################
# 2.	Validating a Password Replace nil with the regex for a password that must contain at least one uppercase letter, one lowercase letter, one digit, and be 8 to 16 characters long.
puts "Problem 2"
def valid_password?(password)
    pattern = /[A-Za-z0-9]+{8,16}/
    password.match?(pattern)
end
  
puts valid_password?("Passw0rd")
puts valid_password?("pass")
  
  #######################################
  # 3.	Finding Numeric Values in a String Replace nil with the regex to find all numeric values in a string.
puts "Problem 3"
def find_numbers(text)
    pattern = /[0-9]+[.][0-9]+/
    text.scan(pattern)
end
  
puts find_numbers("The order was placed for 100.25 units at a price of 20.75 each.")
  
  #######################################
# 4.	Matching a Date Format Replace nil with the regex that matches dates in the format YYYY-MM-DD.
puts "Problem 4"
def valid_date?(date)
    pattern = /\d{4}-\d{2}-\d{2}/
    date.match?(pattern)
end

puts valid_date?("2023-03-15")
puts valid_date?("15-03-2023")
  
#######################################
# 5.	Parsing a Log Entry Replace nil with the regex to match 
# log entries beginning with a severity level (INFO, WARN, or ERROR), followed by a message.
puts "Problem 5"
def parse_log_entry(log)
    pattern = /(\w+): (.+)/
    match = log.match(pattern)
    [match[1], match[2]] if match
end
  
log_entry = "ERROR: Disk space low"
puts parse_log_entry(log_entry).inspect
  