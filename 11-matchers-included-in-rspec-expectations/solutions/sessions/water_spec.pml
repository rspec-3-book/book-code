<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec water_spec.rb
[31mF[0m

Failures:

  1) Water is H2O
     [31mFailure/Error: [0m[32mexpect[0m([1;34;4mWater[0m.elements).to                      ↩
     contain_exactly([33m:hydrogen[0m, [33m:hydrogen[0m, [33m:oxygen[0m)[0m
     [31m[0m
     [31m  expected collection contained:  [:hydrogen, :hydrogen, :oxygen][0m
     [31m  actual collection contained:    [:hydrogen, :oxygen][0m
     [31m  the missing elements were:      [:hydrogen][0m
     [36m# ./water_spec.rb:9:in `block (2 levels) in <top (required)>'[0m

Finished in 0.0115 seconds (files took 0.08187 seconds to load)
[31m1 example, 1 failure[0m

Failed examples:

[31mrspec ./water_spec.rb:8[0m [36m# Water is H2O[0m
</ansii>
