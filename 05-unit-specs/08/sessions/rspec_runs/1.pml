<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/unit/app/api_spec.rb
<literal:elide> truncated </literal:elide>

Failures:

  1) ExpenseTracker::API POST /expenses when the expense is successfully    ↩
  recorded returns the expense id
     [31mFailure/Error:[0m
     [31m  [0m[32mallow[0m(ledger).to receive([33m:record[0m)[0m
     [31m    [0m.with(expense)[0m
     [31m    [0m.and_return([1;34;4mRecordResult[0m.new([1;36mtrue[0m, [1;34m417[0m, [1;36mnil[0m))[0m
     [31m[0m
     [31m  the ExpenseTracker::Ledger class does not implement the instance     ↩
       method: record[0m
     [36m# ./spec/unit/app/api_spec.rb:19:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

<literal:elide> truncated </literal:elide>

Finished in 0.00783 seconds (files took 0.13142 seconds to load)
[31m4 examples, 4 failures[0m

Failed examples:

[31mrspec ./spec/unit/app/api_spec.rb:24[0m [36m# ExpenseTracker::API POST /expenses   ↩
when the expense is successfully recorded returns the expense id[0m
[31mrspec ./spec/unit/app/api_spec.rb:31[0m [36m# ExpenseTracker::API POST /expenses   ↩
when the expense is successfully recorded responds with a 200 (OK)[0m
[31mrspec ./spec/unit/app/api_spec.rb:53[0m [36m# ExpenseTracker::API POST /expenses   ↩
when the expense fails validation responds with a 422 (Unprocessable entity)[0m
[31mrspec ./spec/unit/app/api_spec.rb:46[0m [36m# ExpenseTracker::API POST /expenses   ↩
when the expense fails validation returns an error message[0m

Randomized with seed 40684
</ansii>
