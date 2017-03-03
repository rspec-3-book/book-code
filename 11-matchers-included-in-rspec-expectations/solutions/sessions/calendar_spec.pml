<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec calendar_spec.rb
[31mF[0m

Failures:

  1) Calendar considers sundays to be on the weekend
     [31mFailure/Error: [0m[32mexpect[0m(sunday_date).to be_on_weekend[0m
     [31m  expected `#<struct Calendar date_string="Sun, 11 Jun                 ↩
       2017">.on_weekend?` to return true, got false[0m
     [36m# ./calendar_spec.rb:13:in `block (2 levels) in <top (required)>'[0m

Finished in 0.01206 seconds (files took 0.07922 seconds to load)
[31m1 example, 1 failure[0m

Failed examples:

[31mrspec ./calendar_spec.rb:12[0m [36m# Calendar considers sundays to be on the weekend[0m
</ansii>
