<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/unit/app/api_spec.rb

Randomized with seed 55289

ExpenseTracker::API
  POST /expenses
    when the expense is successfully recorded
[32m      returns the expense id[0m
[32m      responds with a 200 (OK)[0m
    when the expense fails validation
[33m      responds with a 422 (Unprocessable entity) (PENDING: Not yet          ↩
      implemented)[0m
[33m      returns an error message (PENDING: Not yet implemented)[0m

<literal:elide> truncated </literal:elide>

Finished in 0.02565 seconds (files took 0.12232 seconds to load)
[33m4 examples, 0 failures, 2 pending[0m

Randomized with seed 55289
</ansii>
