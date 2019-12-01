#9

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# A: 'no'
# foo returns 'yes'
# yes gets passed into bar(foo) and 'yes' == 'no' is false.

# CORRECT!