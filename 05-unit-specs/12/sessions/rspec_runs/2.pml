<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/unit/app/api_spec.rb

Randomized with seed 14192

ExpenseTracker::API
  GET /expenses/:date
    when expenses exist on the given date
[32m      responds with a 200 (OK)[0m
[31m      returns the expense records as JSON (FAILED - 1)[0m
    when there are no expenses on the given date
[32m      returns an empty array as JSON[0m
[32m      responds with a 200 (OK)[0m
  POST /expenses
    when the expense fails validation
[32m      returns an error message[0m
[32m      responds with a 422 (Unprocessable entity)[0m
    when the expense is successfully recorded
[32m      returns the expense id[0m
[32m      responds with a 200 (OK)[0m

Failures:

  1) ExpenseTracker::API GET /expenses/:date when expenses exist on the     ↩
  given date returns the expense records as JSON
     [31mFailure/Error: [0m[32mexpect[0m(parsed).to eq([[31m[1;31m'[0m[31mexpense_1[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mexpense_2[1;31m'[0m[31m[0m])[0m
     [31m[0m
     [31m  expected: ["expense_1", "expense_2"][0m
     [31m       got: [][0m
     [31m[0m
     [31m  (compared using ==)[0m
     [36m# ./spec/unit/app/api_spec.rb:72:in `block (4 levels) in               ↩
     <module:ExpenseTracker>'[0m

Finished in 0.04087 seconds (files took 0.1367 seconds to load)
[31m8 examples, 1 failure[0m

Failed examples:

[31mrspec ./spec/unit/app/api_spec.rb:68[0m [36m# ExpenseTracker::API GET              ↩
/expenses/:date when expenses exist on the given date returns the expense   ↩
records as JSON[0m

Randomized with seed 14192
</ansii>
