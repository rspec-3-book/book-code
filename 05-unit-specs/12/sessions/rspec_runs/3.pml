<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/unit/app/api_spec.rb

Randomized with seed 27973

ExpenseTracker::API
  POST /expenses
    when the expense fails validation
[32m      responds with a 422 (Unprocessable entity)[0m
[32m      returns an error message[0m
    when the expense is successfully recorded
[32m      returns the expense id[0m
[32m      responds with a 200 (OK)[0m
  GET /expenses/:date
    when expenses exist on the given date
[32m      responds with a 200 (OK)[0m
[32m      returns the expense records as JSON[0m
    when there are no expenses on the given date
[32m      returns an empty array as JSON[0m
[32m      responds with a 200 (OK)[0m

Finished in 0.02951 seconds (files took 0.15204 seconds to load)
[32m8 examples, 0 failures[0m

Randomized with seed 27973
</ansii>
