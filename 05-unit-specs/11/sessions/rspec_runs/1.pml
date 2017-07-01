<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec 

Randomized with seed 59834
[33m*[0m[33m*[0m[33m*[0m[33m*[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[33m*[0m

Pending: (Failures listed here are expected and do not affect your suite's  ↩
status)
[33m
  1) ExpenseTracker::API GET /expenses/:date when there are no expenses on  ↩
  the given date responds with a 200 (OK)[0m
     [36m# Not yet implemented[0m
[36m     # ./spec/unit/app/api_spec.rb:68
[0m[33m
  2) ExpenseTracker::API GET /expenses/:date when there are no expenses on  ↩
  the given date returns an empty array as JSON[0m
     [36m# Not yet implemented[0m
[36m     # ./spec/unit/app/api_spec.rb:67
[0m[33m
  3) ExpenseTracker::API GET /expenses/:date when expenses exist on the     ↩
  given date returns the expense records as JSON[0m
     [36m# Not yet implemented[0m
[36m     # ./spec/unit/app/api_spec.rb:62
[0m[33m
  4) ExpenseTracker::API GET /expenses/:date when expenses exist on the     ↩
  given date responds with a 200 (OK)[0m
     [36m# Not yet implemented[0m
[36m     # ./spec/unit/app/api_spec.rb:63
[0m
  5) Expense Tracker API records submitted expenses
     [36m# Need to persist expenses[0m
     [33mFailure/Error: [0m[32mif[0m result.success?[0m
     [33m[0m
     [33mNoMethodError:[0m
     [33m  undefined method `success?' for nil:NilClass[0m
     [36m# ./app/api.rb:16:in `block in <class:API>'[0m
     [36m# ./spec/acceptance/expense_tracker_api_spec.rb:14:in `post_expense'[0m
     [36m# ./spec/acceptance/expense_tracker_api_spec.rb:24:in `block (2        ↩
     levels) in <module:ExpenseTracker>'[0m

Finished in 0.02425 seconds (files took 0.14455 seconds to load)
[33m10 examples, 0 failures, 5 pending[0m

Randomized with seed 59834
</ansii>
