<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec expect_with_spec.rb -rdate
[32m.[0m[32m.[0m[31mF[0m

  1) Using different assertion/expectation libraries works with wrong
     [31mFailure/Error: [0massert { result == [1;34m5[0m }[0m
     [31m[0m
     [31mWrong::Assert::AssertionFailedError:[0m
     [31m  Expected (result == 5), but[0m
     [31m      result is 4[0m
     [36m# <literal:elide>gem path</literal:elide>/lib/wrong/assert.rb:82:in `aver'[0m
     [36m# <literal:elide>gem path</literal:elide>/lib/wrong/assert.rb:34:in `assert'[0m
     [36m# ./expect_with_spec.rb:20:in `block (2 levels) in <top (required)>'[0m



Finished in 0.02747 seconds (files took 0.37437 seconds to load)
[31m3 examples, 1 failure[0m

Failed examples:

[31mrspec ./expect_with_spec.rb:18[0m [36m# Using different assertion/expectation      ↩
libraries works with wrong[0m
</ansii>
