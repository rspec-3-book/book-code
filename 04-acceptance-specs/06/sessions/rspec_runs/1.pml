<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec
[33m*[0m

Pending: (Failures listed here are expected and do not affect your suite's  ↩
status)

  1) Expense Tracker API records submitted expenses
     [36m# Need to persist expenses[0m
     [33mFailure/Error: [0m[32mexpect[0m(expenses).to contain_exactly(coffee, zoo)[0m
     [33m[0m
     [33m  expected collection contained:  [{"payee"=>"Starbucks",              ↩
       "amount"=>5.75, "date"=>"2017-06-10", "id"=>42}, {"payee"=>"Zoo",    ↩
       "amount"=>15.25, "date"=>"2017-06-10", "id"=>42}][0m
     [33m  actual collection contained:    [][0m
     [33m  the missing elements were:      [{"payee"=>"Starbucks",              ↩
       "amount"=>5.75, "date"=>"2017-06-10", "id"=>42}, {"payee"=>"Zoo",    ↩
       "amount"=>15.25, "date"=>"2017-06-10", "id"=>42}][0m
     [36m# ./spec/acceptance/expense_tracker_api_spec.rb:46:in `block (2        ↩
     levels) in <module:ExpenseTracker>'[0m

Finished in 0.03437 seconds (files took 0.1271 seconds to load)
[33m1 example, 0 failures, 1 pending[0m
</ansii>
