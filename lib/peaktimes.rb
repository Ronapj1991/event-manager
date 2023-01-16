require 'date'
#https://www.rubyguides.com/2015/12/ruby-time/
#https://ruby-doc.org/core-3.1.1/Time.html#method-i-hour

#https://github.com/TheOdinProject/curriculum/blob/main/ruby/files_and_serialization/event_attendees.csv
#Open the CSV file
#iterate over each row
#Grab the RegDate
#Need to extract hours from the dates
#Examples: "11/12/08 10:47" , 2/2/09 11:29
  #"11/12/08 10:47".split(" ")
  #["11/12/08", "10:47"] so the index 1 gives the time
  #"11/12/08 10:47".split(" ")[1].split(":")[0] gives the hours per row
  #Create a hash Hash.new(0) initial value 0
  #if the hour does not exist in the created hash, add it to the hash and increment the value
  #iterate through the has and output the count per hour