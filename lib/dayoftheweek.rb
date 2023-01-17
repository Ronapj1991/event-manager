require 'date'
require 'csv'

def fix_format(str_date)
  extracted_date = Date.strptime(str_date, "%m/%d/%Y").to_s
  fix_year = "2" + extracted_date[1..extracted_date.length]
  Date.strptime(fix_year, "%Y-%m-%d")
end

def extract_day(from_date)
  days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
  day_number = from_date.wday
  days[day_number]
end

contents = CSV.open("event_attendees.csv",
  headers: true,
  header_converters: :symbol
)

day_hash = Hash.new(0)

contents.each do |row|
  fixed = fix_format(row[:regdate])
  day = extract_day(fixed)

  day_hash[day] += 1
end

day_hash.each do |key, val|
  puts "On #{key}, #{val} registered"
end