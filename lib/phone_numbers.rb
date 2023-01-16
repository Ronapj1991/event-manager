require 'csv'

def valid_number(phone_number)
  number = phone_number.gsub(/( |\D)/, "")
  if number.length == 10
    number
  elsif number.length == 1 && number[0] == 1
    number = number[1..10]
  else
    "Not a valid number"
  end
end

p File.exist?("event_attendees.csv")

phone_numbers = CSV.open(
  "event_attendees.csv", 
  headers: true,
  header_converters: :symbol
)

phone_numbers.each do |row|
  phone_number_from_csv = row[:homephone]

  puts valid_number(phone_number_from_csv) 
end

