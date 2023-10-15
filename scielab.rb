require "vips"

def scielab(a, b)
  a.dE76(b).gaussblur(5)
end

a = Vips::Image.new_from_file(ARGV[0])
b = Vips::Image.new_from_file(ARGV[1])
diff = scielab(a, b)

puts "min scielab = #{diff.min}"
puts "max scielab = #{diff.max}"
puts "avg scielab = #{diff.avg}"

