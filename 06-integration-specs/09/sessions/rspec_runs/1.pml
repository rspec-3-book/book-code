<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/integration/app/ledger_spec.rb

Randomized with seed 3824

ExpenseTracker::Ledger
  #record
    with a valid expense
[32m      successfully saves the expense in the DB[0m
    when the expense lacks a payee
[32m      rejects the expense as invalid[0m
  #expenses_on
[31m    returns a blank array when there are no matching expenses (FAILED - 1)[0m
[31m    returns all expenses for the provided date (FAILED - 2)[0m

Failures:

  1) ExpenseTracker::Ledger#expenses_on returns a blank array when there    ↩
  are no matching expenses
     [31mFailure/Error: [0m[32mexpect[0m(ledger.expenses_on([31m[1;31m'[0m[31m2017-06-10[1;31m'[0m[31m[0m)).to eq([])[0m
     [31m[0m
     [31m  expected: [][0m
     [31m       got: nil[0m
     [31m[0m
     [31m  (compared using ==)[0m
     [36m# ./spec/integration/app/ledger_spec.rb:59:in `block (3 levels) in     ↩
     <module:ExpenseTracker>'[0m
     [36m# ./spec/support/db.rb:9:in `block (3 levels) in <top (required)>'[0m
     [36m# ./spec/support/db.rb:9:in `block (2 levels) in <top (required)>'[0m

  2) ExpenseTracker::Ledger#expenses_on returns all expenses for the        ↩
  provided date
     [31mFailure/Error:[0m
     [31m  [0m[32mexpect[0m(ledger.expenses_on([31m[1;31m'[0m[31m2017-06-10[1;31m'[0m[31m[0m)).to contain_exactly([0m
     [31m    [0ma_hash_including([35mid[0m: result_1.expense_id),[0m
     [31m    [0ma_hash_including([35mid[0m: result_2.expense_id)[0m
     [31m  [0m)[0m
     [31m[0m
     [31m  expected a collection that can be converted to an array with         ↩
       `#to_ary` or `#to_a`, but got nil[0m
     [36m# ./spec/integration/app/ledger_spec.rb:52:in `block (3 levels) in     ↩
     <module:ExpenseTracker>'[0m
     [36m# ./spec/support/db.rb:9:in `block (3 levels) in <top (required)>'[0m
     [36m# ./spec/support/db.rb:9:in `block (2 levels) in <top (required)>'[0m

Finished in 0.02766 seconds (files took 0.16616 seconds to load)
[31m4 examples, 2 failures[0m

Failed examples:

[31mrspec ./spec/integration/app/ledger_spec.rb:58[0m [36m#                            ↩
ExpenseTracker::Ledger#expenses_on returns a blank array when there are no  ↩
matching expenses[0m
[31mrspec ./spec/integration/app/ledger_spec.rb:47[0m [36m#                            ↩
ExpenseTracker::Ledger#expenses_on returns all expenses for the provided date[0m

Randomized with seed 3824
</ansii>
