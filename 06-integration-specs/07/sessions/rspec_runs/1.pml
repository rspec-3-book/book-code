<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/integration/app/ledger_spec.rb
<literal:elide> truncated </literal:elide>

Failures:

  1) ExpenseTracker::Ledger#record when the expense lacks a payee rejects   ↩
  the expense as invalid

<literal:elide> truncated </literal:elide>

  2) ExpenseTracker::Ledger#record with a valid expense successfully saves  ↩
  the expense in the DB

<literal:elide> truncated </literal:elide>

Finished in 0.02597 seconds (files took 0.18213 seconds to load)
[31m2 examples, 2 failures[0m

Failed examples:

[31mrspec ./spec/integration/app/ledger_spec.rb:34[0m [36m#                            ↩
ExpenseTracker::Ledger#record when the expense lacks a payee rejects the    ↩
expense as invalid[0m
[31mrspec ./spec/integration/app/ledger_spec.rb:20[0m [36m#                            ↩
ExpenseTracker::Ledger#record with a valid expense successfully saves the   ↩
expense in the DB[0m

Randomized with seed 57045
</ansii>
