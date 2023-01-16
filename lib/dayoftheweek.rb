#https://rubyapi.org/3.1/o/date#method-i-wday

#Open the CSV file
#for each row, Get the RegDate
#Objective is to extract each day of the week
#2/2/09 11:29, 11/12/08 13:30
#Day = "11/12/08 11:29".split("/")[1]
#Month = "11/12/08 11:29".split("/")[0]
#Year = 20.concat("11/12/08 11:29".split("/")[2].split(" ")[0]")
#Date.new(Year, month, day).wday
#Hash.new(0), if the day is not in the hash, add it and increment the value by 1