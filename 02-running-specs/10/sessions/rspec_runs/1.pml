<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec 
[32m.[0m[32m.[0m[33m*[0m[33m*[0m

Pending: (Failures listed here are expected and do not affect your suite's  ↩
status)

  1) A cup of coffee with milk is light in color
     [36m# Color not implemented yet[0m
     [33mFailure/Error: [0m[32mexpect[0m(coffee.color).to be([33m:light[0m)[0m
     [33m[0m
     [33mNoMethodError:[0m
     [33m  undefined method `color' for #<Coffee:0x007f83b1199a88               ↩
       @ingredients=[:milk]>[0m
     [36m# ./spec/coffee_spec.rb:36:in `block (3 levels) in <top (required)>'[0m

  2) A cup of coffee with milk is cooler than 200 degrees Fahrenheit
     [36m# Temperature not implemented yet[0m
     [33mFailure/Error: [0m[32mexpect[0m(coffee.temperature).to be < [1;35m200.0[0m[0m
     [33m[0m
     [33mNoMethodError:[0m
     [33m  undefined method `temperature' for #<Coffee:0x007f83b11984d0         ↩
       @ingredients=[:milk]>[0m
     [36m# ./spec/coffee_spec.rb:41:in `block (3 levels) in <top (required)>'[0m

Finished in 0.00161 seconds (files took 0.07898 seconds to load)
[33m4 examples, 0 failures, 2 pending[0m
</ansii>
