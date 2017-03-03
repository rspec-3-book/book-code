<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/integration/app/ledger_spec.rb
<literal:elide> truncated </literal:elide>

Failures:

  1) ExpenseTracker::Ledger#record with a valid expense successfully saves  ↩
  the expense in the DB
     [31mFailure/Error: [0m[32mexpect[0m(result).to be_success[0m
     [31m  expected nil to respond to `success?`[0m
     [36m# ./spec/integration/app/ledger_spec.rb:23:in `block (4 levels) in     ↩
     <module:ExpenseTracker>'[0m

Finished in 0.02211 seconds (files took 0.15418 seconds to load)
[31m1 example, 1 failure[0m

Failed examples:

[31mrspec ./spec/integration/app/ledger_spec.rb:20[0m [36m#                            ↩
ExpenseTracker::Ledger#record with a valid expense successfully saves the   ↩
expense in the DB[0m

Randomized with seed 27984
</ansii>
