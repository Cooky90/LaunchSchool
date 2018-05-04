def light_switch(light_status)
  light_status == 'off' ? 'on' : 'off'
end

def lights(n_switches)
  lights = {}
  n_switches.times {|num| lights[num + 1] = 'on'}
  count = 2
  count.upto(n_switches) do |i|
    lights.each do |key,value|
      lights[key] = light_switch(lights[key]) if key % i == 0 
    end
  end
  result = lights.select{|k,v| v == 'on'}.keys
end

lights(5) == [1, 4]
lights(10) == [1, 4, 9]