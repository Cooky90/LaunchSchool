## GO BACK TO THIS EXERCISE!!

def time_of_day(minutes)
  
  hours = (minutes / 60 % 24).to_s.rjust(2, "0")
  minutes = (minutes % 60).to_s.rjust(2, "0")
  "#{hours}:#{minutes}"
  
  days_passed = ((minutes.to_i / 60 % 24) / 24).to_s
  "#{days_passed} days have passed"
end

# put the days into an array and calculate how many days have passed

time_of_day(1560)