<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/unit/app/api_spec.rb

Randomized with seed 59512

ExpenseTracker::API
  GET /expenses/:date
    when expenses exist on the given date
[31m      responds with a 200 (OK) (FAILED - 1)[0m
[31m      returns the expense records as JSON (FAILED - 2)[0m
    when there are no expenses on the given date
[31m      returns an empty array as JSON (FAILED - 3)[0m
[31m      responds with a 200 (OK) (FAILED - 4)[0m
  POST /expenses
    when the expense is successfully recorded
[32m      returns the expense id[0m
[32m      responds with a 200 (OK)[0m
    when the expense fails validation
[32m      responds with a 422 (Unprocessable entity)[0m
[32m      returns an error message[0m

Failures:

  1) ExpenseTracker::API GET /expenses/:date when expenses exist on the     ↩
  given date responds with a 200 (OK)
     [31mFailure/Error:[0m
     [31m  [0m[32mallow[0m(ledger).to receive([33m:expenses_on[0m)[0m
     [31m    [0m.with([31m[1;31m'[0m[31m2017-06-12[1;31m'[0m[31m[0m)[0m
     [31m    [0m.and_return([[31m[1;31m'[0m[31mexpense_1[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mexpense_2[1;31m'[0m[31m[0m])[0m
     [31m[0m
     [31m  the ExpenseTracker::Ledger class does not implement the instance     ↩
       method: expenses_on[0m
     [36m# ./spec/unit/app/api_spec.rb:63:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

  2) ExpenseTracker::API GET /expenses/:date when expenses exist on the     ↩
  given date returns the expense records as JSON
     [31mFailure/Error:[0m
     [31m  [0m[32mallow[0m(ledger).to receive([33m:expenses_on[0m)[0m
     [31m    [0m.with([31m[1;31m'[0m[31m2017-06-12[1;31m'[0m[31m[0m)[0m
     [31m    [0m.and_return([[31m[1;31m'[0m[31mexpense_1[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mexpense_2[1;31m'[0m[31m[0m])[0m
     [31m[0m
     [31m  the ExpenseTracker::Ledger class does not implement the instance     ↩
       method: expenses_on[0m
     [36m# ./spec/unit/app/api_spec.rb:63:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

  3) ExpenseTracker::API GET /expenses/:date when there are no expenses on  ↩
  the given date returns an empty array as JSON
     [31mFailure/Error:[0m
     [31m  [0m[32mallow[0m(ledger).to receive([33m:expenses_on[0m)[0m
     [31m    [0m.with([31m[1;31m'[0m[31m2017-06-12[1;31m'[0m[31m[0m)[0m
     [31m    [0m.and_return([])[0m
     [31m[0m
     [31m  the ExpenseTracker::Ledger class does not implement the instance     ↩
       method: expenses_on[0m
     [36m# ./spec/unit/app/api_spec.rb:83:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

  4) ExpenseTracker::API GET /expenses/:date when there are no expenses on  ↩
  the given date responds with a 200 (OK)
     [31mFailure/Error:[0m
     [31m  [0m[32mallow[0m(ledger).to receive([33m:expenses_on[0m)[0m
     [31m    [0m.with([31m[1;31m'[0m[31m2017-06-12[1;31m'[0m[31m[0m)[0m
     [31m    [0m.and_return([])[0m
     [31m[0m
     [31m  the ExpenseTracker::Ledger class does not implement the instance     ↩
       method: expenses_on[0m
     [36m# ./spec/unit/app/api_spec.rb:83:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

Finished in 0.02799 seconds (files took 0.14627 seconds to load)
[31m8 examples, 4 failures[0m

Failed examples:

[31mrspec ./spec/unit/app/api_spec.rb:75[0m [36m# ExpenseTracker::API GET              ↩
/expenses/:date when expenses exist on the given date responds with a 200   ↩
(OK)[0m
[31mrspec ./spec/unit/app/api_spec.rb:68[0m [36m# ExpenseTracker::API GET              ↩
/expenses/:date when expenses exist on the given date returns the expense   ↩
records as JSON[0m
[31mrspec ./spec/unit/app/api_spec.rb:88[0m [36m# ExpenseTracker::API GET              ↩
/expenses/:date when there are no expenses on the given date returns an     ↩
empty array as JSON[0m
[31mrspec ./spec/unit/app/api_spec.rb:95[0m [36m# ExpenseTracker::API GET              ↩
/expenses/:date when there are no expenses on the given date responds with  ↩
a 200 (OK)[0m

Randomized with seed 59512
</ansii>
