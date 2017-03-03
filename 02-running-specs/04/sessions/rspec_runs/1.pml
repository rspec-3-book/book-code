<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec -e milk -fd
Run options: include {:full_description=>/milk/}

A cup of coffee
  with milk
[31m    costs $1.25 (FAILED - 1)[0m

Failures:

  1) A cup of coffee with milk costs $1.25
     [31mFailure/Error: [0m[32mexpect[0m(coffee.price).to eq([1;35m1.25[0m)[0m
     [31m[0m
     [31m  expected: 1.25[0m
     [31m       got: 1.0[0m
     [31m[0m
     [31m  (compared using ==)[0m
     [36m# ./spec/coffee_spec.rb:26:in `block (3 levels) in <top (required)>'[0m

Finished in 0.01014 seconds (files took 0.08249 seconds to load)
[31m1 example, 1 failure[0m

Failed examples:

[31mrspec ./spec/coffee_spec.rb:25[0m [36m# A cup of coffee with milk costs $1.25[0m
</ansii>
