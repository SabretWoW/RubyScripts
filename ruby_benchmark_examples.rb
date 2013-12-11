# http://www.ruby-doc.org/stdlib-2.0/libdoc/benchmark/rdoc/Benchmark.html
require 'benchmark'
# http://www.ruby-doc.org/stdlib-2.0.0/libdoc/bigdecimal/rdoc/BigMath.html
require 'bigdecimal/math'


# Set the number of iterations to run. The underscore here is used as a substitute for normal comma so Ruby interprets the number correctly.
iterations = 10
puts "\nCalculating pi #{iterations} times.\n\n"

# Calculate pi to specified number of digits.
puts Benchmark.measure("test") { BigMath.PI(iterations) }
puts "\n\n"


# =================
# .benchmark: Benchmark several blocks of code at once to see which is faster.
# =================

iterations = 10

caption = "String joining #{iterations} times.\n\n"

Benchmark.benchmark(caption, 30, nil) do |bm|
  bm.report("Joining array of strings: ") do
    iterations.times do
      ["The", "current", "time", "is", Time.now, ":"].join(" ")
    end
  end

  bm.report("Joining strings with plus signs") do
    iterations.times do
      "The" + "current" + "time" + "is" + "#{Time.now}" + ":"
    end
  end

  bm.report("Using string interpolation") do
    iterations.times do
      "The current time is #{Time.now}:"
    end
  end
end

# =================
# .bmbm: Establish baseline numbers for your tests by running them twice.
# =================

iterations = 1000
puts "\n\nSorting arrays #{iterations} times.\n\n"

array = (1..iterations).map { rand }

Benchmark.bmbm do |x|
  x.report("sort!") { array.dup.sort! }
  x.report("sort")  { array.dup.sort  }
end
