<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec water_spec.rb
[31mF[0m

Failures:

  1) Water is H2O
     [31mFailure/Error: [0m[32mexpect[0m([1;34;4mWater[0m.elements.sort).to eq [[33m:hydrogen[0m,  ↩
     [33m:hydrogen[0m, [33m:oxygen[0m][0m
     [31m[0m
     [31m  expected: [:hydrogen, :hydrogen, :oxygen][0m
     [31m       got: [:hydrogen, :oxygen][0m
     [31m[0m
     [31m  (compared using ==)[0m
     [31m[0m
     [31m  Diff:[0m[0m
     [31m  [0m[34m@@ -1,2 +1,2 @@[0m
     [31m  [0m[31m-[:hydrogen, :hydrogen, :oxygen][0m
     [31m  [0m[32m+[:hydrogen, :oxygen][0m
     [31m  [0m[0m
     [36m# ./water_spec.rb:9:in `block (2 levels) in <top (required)>'[0m

Finished in 0.01163 seconds (files took 0.08126 seconds to load)
[31m1 example, 1 failure[0m

Failed examples:

[31mrspec ./water_spec.rb:8[0m [36m# Water is H2O[0m
</ansii>
