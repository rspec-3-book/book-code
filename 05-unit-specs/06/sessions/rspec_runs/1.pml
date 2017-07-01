<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/unit/app/api_spec.rb
<literal:elide> truncated </literal:elide>

Failures:

  1) ExpenseTracker::API POST /expenses when the expense fails validation   ↩
  returns an error message
     [31mFailure/Error: [0m[32mexpect[0m(parsed).to include([31m[1;31m'[0m[31merror[1;31m'[0m[31m[0m => [31m[1;31m'[0m[31mExpense           ↩
     incomplete[1;31m'[0m[31m[0m)[0m
     [31m[0m
     [31m  expected {"expense_id" => 417} to include {"error" => "Expense       ↩
       incomplete"}[0m
     [31m  Diff:[0m[0m
     [31m  [0m[34m@@ -1,2 +1,2 @@[0m
     [31m  [0m[31m-"error" => "Expense incomplete",[0m
     [31m  [0m[32m+"expense_id" => 417,[0m
     [31m  [0m[0m
     [36m# ./spec/unit/app/api_spec.rb:52:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

  2) ExpenseTracker::API POST /expenses when the expense fails validation   ↩
  responds with a 422 (Unprocessable entity)
     [31mFailure/Error: [0m[32mexpect[0m(last_response.status).to eq([1;34m422[0m)[0m
     [31m[0m
     [31m  expected: 422[0m
     [31m       got: 200[0m
     [31m[0m
     [31m  (compared using ==)[0m
     [36m# ./spec/unit/app/api_spec.rb:57:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

Finished in 0.03552 seconds (files took 0.13746 seconds to load)
[31m4 examples, 2 failures[0m

Failed examples:

[31mrspec ./spec/unit/app/api_spec.rb:48[0m [36m# ExpenseTracker::API POST /expenses   ↩
when the expense fails validation returns an error message[0m
[31mrspec ./spec/unit/app/api_spec.rb:55[0m [36m# ExpenseTracker::API POST /expenses   ↩
when the expense fails validation responds with a 422 (Unprocessable entity)[0m

Randomized with seed 8222
</ansii>
