<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec spec/integration/app/ledger_spec.rb

Randomized with seed 22267

ExpenseTracker::Ledger
  #record
    with a valid expense
[32m      successfully saves the expense in the DB[0m
    when the expense lacks a payee
[32m      rejects the expense as invalid[0m
  #expenses_on
[32m    returns all expenses for the provided date[0m
[32m    returns a blank array when there are no matching expenses[0m

Finished in 0.01832 seconds (files took 0.16797 seconds to load)
[32m4 examples, 0 failures[0m

Randomized with seed 22267
</ansii>
