def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# Answer:
# The answer is "no", this is because foo returns yes, this is passed into the bar method.
# Then as the ternary evaluation in bar method is false, so "no" is returned.