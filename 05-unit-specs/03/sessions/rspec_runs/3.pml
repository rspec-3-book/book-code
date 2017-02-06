<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/unit/app/api_spec.rb

Randomized with seed 55289

ExpenseTracker::API
  POST /expenses
    when the expense is successfully recorded
[32m      responds with a 200 (OK)[0m
[33m      returns the expense id (PENDING: Not yet implemented)[0m
    when the expense fails validation
[33m      returns an error message (PENDING: Not yet implemented)[0m
[33m      responds with a 422 (Unprocessable entity) (PENDING: Not yet          ↩
      implemented)[0m

Pending: (Failures listed here are expected and do not affect your suite's  ↩
status)
[33m
  1) ExpenseTracker::API POST /expenses when the expense is successfully    ↩
  recorded returns the expense id[0m
     [36m# Not yet implemented[0m
[36m     # ./spec/unit/app/api_spec.rb:27
[0m[33m
  2) ExpenseTracker::API POST /expenses when the expense fails validation   ↩
  returns an error message[0m
     [36m# Not yet implemented[0m
[36m     # ./spec/unit/app/api_spec.rb:33
[0m[33m
  3) ExpenseTracker::API POST /expenses when the expense fails validation   ↩
  responds with a 422 (Unprocessable entity)[0m
     [36m# Not yet implemented[0m
[36m     # ./spec/unit/app/api_spec.rb:32
[0m

Finished in 0.0216 seconds (files took 0.10695 seconds to load)
[33m4 examples, 0 failures, 3 pending[0m

Randomized with seed 55289
</ansii>
