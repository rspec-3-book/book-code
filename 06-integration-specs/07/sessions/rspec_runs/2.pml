<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec 

Randomized with seed 49329
[32m.[0m[31mF[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[33m*[0m

Pending: (Failures listed here are expected and do not affect your suite's  ↩
status)

  1) Expense Tracker API records submitted expenses
     [36m# Need to persist expenses[0m
     [33mFailure/Error: [0m[32mexpect[0m(expenses).to contain_exactly(coffee, zoo)[0m
     [33m  expected a collection that can be converted to an array with         ↩
       `#to_ary` or `#to_a`, but got nil[0m
     [36m# ./spec/acceptance/expense_tracker_api_spec.rb:46:in `block (2        ↩
     levels) in <module:ExpenseTracker>'[0m

Failures:

  1) ExpenseTracker::Ledger#record when the expense lacks a payee rejects   ↩
  the expense as invalid
     [31mGot 4 failures:[0m

     1.1) [31mFailure/Error: [0m[32mexpect[0m(result).not_to be_success[0m
          [31m  expected `#<struct ExpenseTracker::RecordResult :success?=true, ↩
            expense_id=5, error_message=nil>.success?` to return false, got ↩
            true[0m
          [36m# ./spec/integration/app/ledger_spec.rb:39:in `block (4 levels)   ↩
          in <module:ExpenseTracker>'[0m

     1.2) [31mFailure/Error: [0m[32mexpect[0m(result.expense_id).to eq([1;36mnil[0m)[0m
          [31m[0m
          [31m  expected: nil[0m
          [31m       got: 5[0m
          [31m[0m
          [31m  (compared using ==)[0m
          [36m# ./spec/integration/app/ledger_spec.rb:40:in `block (4 levels)   ↩
          in <module:ExpenseTracker>'[0m

     1.3) [31mFailure/Error: [0m[32mexpect[0m(result.error_message).to include([31m[1;31m'[0m[31m`payee`   ↩
     is required[1;31m'[0m[31m[0m)[0m
          [31m  expected nil to include "`payee` is required", but it does not  ↩
            respond to `include?`[0m
          [36m# ./spec/integration/app/ledger_spec.rb:41:in `block (4 levels)   ↩
          in <module:ExpenseTracker>'[0m

     1.4) [31mFailure/Error: [0m[32mexpect[0m([1;34;4mDB[0m[[33m:expenses[0m].count).to eq([1;34m0[0m)[0m
          [31m[0m
          [31m  expected: 0[0m
          [31m       got: 2[0m
          [31m[0m
          [31m  (compared using ==)[0m
          [36m# ./spec/integration/app/ledger_spec.rb:43:in `block (4 levels)   ↩
          in <module:ExpenseTracker>'[0m

Finished in 0.05691 seconds (files took 0.21616 seconds to load)
[31m11 examples, 1 failure, 1 pending[0m

Failed examples:

[31mrspec ./spec/integration/app/ledger_spec.rb:34[0m [36m#                            ↩
ExpenseTracker::Ledger#record when the expense lacks a payee rejects the    ↩
expense as invalid[0m

Randomized with seed 49329
</ansii>
