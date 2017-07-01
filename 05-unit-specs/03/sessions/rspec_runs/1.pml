<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/unit/app/api_spec.rb
<literal:elide> truncated </literal:elide>

Failures:

  1) ExpenseTracker::API POST /expenses when the expense is successfully    ↩
  recorded returns the expense id
     [31mFailure/Error: [0m[32mexpect[0m(parsed).to include([31m[1;31m'[0m[31mexpense_id[1;31m'[0m[31m[0m => [1;34m417[0m)[0m
     [31m[0m
     [31m  expected {"expense_id" => 42} to include {"expense_id" => 417}[0m
     [31m  Diff:[0m[0m
     [31m  [0m[34m@@ -1,2 +1,2 @@[0m
     [31m  [0m[31m-"expense_id" => 417,[0m
     [31m  [0m[32m+"expense_id" => 42,[0m
     [31m  [0m[0m
     [36m# ./spec/unit/app/api_spec.rb:30:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

Finished in 0.03784 seconds (files took 0.16365 seconds to load)
[31m4 examples, 1 failure, 3 pending[0m

Failed examples:

[31mrspec ./spec/unit/app/api_spec.rb:20[0m [36m# ExpenseTracker::API POST /expenses   ↩
when the expense is successfully recorded returns the expense id[0m

Randomized with seed 56373
</ansii>
