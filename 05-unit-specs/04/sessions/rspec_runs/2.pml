<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/unit/app/api_spec.rb
<literal:elide> truncated </literal:elide>

Failures:

  1) ExpenseTracker::API POST /expenses when the expense is successfully    ↩
  recorded responds with a 200 (OK)
     [31mFailure/Error: [0m[32mexpect[0m(last_response.status).to eq([1;34m200[0m)[0m
     [31m[0m
     [31m  expected: 200[0m
     [31m       got: 404[0m
     [31m[0m
     [31m  (compared using ==)[0m
     [36m# ./spec/unit/app/api_spec.rb:41:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

Finished in 0.03479 seconds (files took 0.14115 seconds to load)
[31m4 examples, 1 failure, 2 pending[0m

Failed examples:

[31mrspec ./spec/unit/app/api_spec.rb:33[0m [36m# ExpenseTracker::API POST /expenses   ↩
when the expense is successfully recorded responds with a 200 (OK)[0m

Randomized with seed 32399
</ansii>
