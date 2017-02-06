<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec 
[31mF[0m[31mF[0m

Failures:

  1) Tea tastes like Earl Grey
     [31mFailure/Error: [0m[32mexpect[0m(tea.flavor).to be [33m:earl_grey[0m[0m
     [31m[0m
     [31mNoMethodError:[0m
     [31m  undefined method `flavor' for #<Tea:0x007fbeca34fef0>[0m
     [36m# ./spec/tea_spec.rb:12:in `block (2 levels) in <top (required)>'[0m

  2) Tea is hot
     [31mFailure/Error: [0m[32mexpect[0m(tea.temperature).to be > [1;35m200.0[0m[0m
     [31m[0m
     [31mNoMethodError:[0m
     [31m  undefined method `temperature' for #<Tea:0x007fbeca34e370>[0m
     [36m# ./spec/tea_spec.rb:16:in `block (2 levels) in <top (required)>'[0m

Finished in 0.00105 seconds (files took 0.08083 seconds to load)
[31m2 examples, 2 failures[0m

Failed examples:

[31mrspec ./spec/tea_spec.rb:11[0m [36m# Tea tastes like Earl Grey[0m
[31mrspec ./spec/tea_spec.rb:15[0m [36m# Tea is hot[0m
</ansii>
