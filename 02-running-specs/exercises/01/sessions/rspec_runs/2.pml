<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec --next-failure
Run options: include {:last_run_status=>"failed"}
[31mF[0m

Failures:

  1) Tea tastes like Earl Grey
     [31mFailure/Error: [0m[32mexpect[0m(tea.flavor).to be [33m:earl_grey[0m[0m
     [31m[0m
     [31mNoMethodError:[0m
     [31m  undefined method `flavor' for #<Tea:0x007fddbc0b9f18>[0m
     [36m# ./spec/tea_spec.rb:12:in `block (2 levels) in <top (required)>'[0m

Finished in 0.00077 seconds (files took 0.08153 seconds to load)
[31m1 example, 1 failure[0m

Failed examples:

[31mrspec ./spec/tea_spec.rb:11[0m [36m# Tea tastes like Earl Grey[0m
</ansii>
