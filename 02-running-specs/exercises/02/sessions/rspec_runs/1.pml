<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec --next-failure
Run options: include {:last_run_status=>"failed"}
[32m.[0m[31mF[0m

Failures:

  1) Tea is hot
     [31mFailure/Error: [0m[32mexpect[0m(tea.temperature).to be > [1;35m200.0[0m[0m
     [31m[0m
     [31mNoMethodError:[0m
     [31m  undefined method `temperature' for #<Tea:0x007f90934a3d98>[0m
     [36m# ./spec/tea_spec.rb:19:in `block (2 levels) in <top (required)>'[0m

Finished in 0.00136 seconds (files took 0.07968 seconds to load)
[31m2 examples, 1 failure[0m

Failed examples:

[31mrspec ./spec/tea_spec.rb:18[0m [36m# Tea is hot[0m
</ansii>
