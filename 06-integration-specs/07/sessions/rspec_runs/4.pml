<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec --seed 32043
<literal:elide> truncated </literal:elide>

Finished in 0.05941 seconds (files took 0.22746 seconds to load)
[31m11 examples, 2 failures, 1 pending[0m

Failed examples:

[31mrspec ./spec/integration/app/ledger_spec.rb:20[0m [36m#                            ↩
ExpenseTracker::Ledger#record with a valid expense successfully saves the   ↩
expense in the DB[0m
[31mrspec ./spec/integration/app/ledger_spec.rb:34[0m [36m#                            ↩
ExpenseTracker::Ledger#record when the expense lacks a payee rejects the    ↩
expense as invalid[0m

Randomized with seed 32043
</ansii>
