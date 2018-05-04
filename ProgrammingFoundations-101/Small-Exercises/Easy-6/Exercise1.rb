DEGREE_SYMBOL = "\xC2\xB0"
MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60
SECONDS_IN_DEGREE = MINUTES_IN_DEGREE * SECONDS_IN_MINUTE


# In order to solve this problem, focus on what we have and what we need to return?

# First, we have a number(2 decimal places) and from what we must return degrees, minutes and seconds. Let's calculate this.

def dms(degrees)
  originally_negative = false
  if degrees < 0 
    degrees = degrees.abs
    originally_negative = true
  end
  
  total_seconds = (degrees * SECONDS_IN_DEGREE).round # takes the degrees passed in and multiplies by 3600 to return the seconds, round with no arg rounds to 0 decimal numbers
  degrees_dms , seconds_remaining = total_seconds.divmod(SECONDS_IN_DEGREE) #divmod is used to calculate degrees using total amount of seconds, divmod also returns remainder
  # which is assigned to second remaining var.
  minutes, seconds = seconds_remaining.divmod(SECONDS_IN_MINUTE) # calculating the minutes now using the left over seconds from above ^^ 
  
  if originally_negative == true
    format(%(-#{degrees_dms}#{DEGREE_SYMBOL}%02d'%02d"),minutes,seconds)
  else
    format(%(#{degrees_dms}#{DEGREE_SYMBOL}%02d'%02d"),minutes,seconds)
  end
  
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
dms(-54.12)