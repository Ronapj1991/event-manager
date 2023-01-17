require 'csv'
require 'time'

def extract_hour(str_date)
  Time.strptime(str_date, "%M/%d/%Y %H:%M").strftime("%l%p")
end

contents = CSV.open("event_attendees.csv",
  headers: true,
  header_converters: :symbol
)

hour_count = Hash.new(0)

contents.each do |row|
  hour = extract_hour(row[:regdate])
  hour_count[hour] += 1
end

hour_count.each do |key, val|
  puts "At #{key}, there were #{val} registrations"
end