<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec a_spec.rb --format doc

A group with a failure
[31m  has an example that fails (FAILED - 1)[0m


  1) A group with a failure has an example that fails
     [31mFailure/Error: [0m[32mexpect[0m([1;34m1[0m).to eq [1;34m2[0m[0m
     [31m[0m
     [31m  expected: 2[0m
     [31m       got: 1[0m
     [31m[0m
     [31m  (compared using ==)[0m
     [36m# ./a_spec.rb:3:in `block (2 levels) in <top (required)>'[0m

[32m  has an example that succeeds[0m

Another group with a failure
[31m  has an example that fails (FAILED - 2)[0m


  2) Another group with a failure has an example that fails
     [31mFailure/Error: [0m[32mexpect[0m([1;34m1[0m).to eq [1;34m2[0m[0m
     [31m[0m
     [31m  expected: 2[0m
     [31m       got: 1[0m
     [31m[0m
     [31m  (compared using ==)[0m
     [36m# ./a_spec.rb:13:in `block (2 levels) in <top (required)>'[0m

[32m  has an example that succeeds[0m

Finished in 0.03249 seconds (files took 0.08034 seconds to load)
[31m4 examples, 2 failures[0m

Failed examples:

[31mrspec ./a_spec.rb:2[0m [36m# A group with a failure has an example that fails[0m
[31mrspec ./a_spec.rb:12[0m [36m# Another group with a failure has an example that fails[0m
</ansii>
