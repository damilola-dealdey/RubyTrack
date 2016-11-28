print "Method name ? : "
method_name = gets

print "Line of code ? : "
line_of_code = gets

Object.define_singleton_method(method_name) do
  puts eval(line_of_code)
end

Object.send(method_name)