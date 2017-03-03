<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec './spec/acceptance/expense_tracker_api_spec.rb[1:1]'    ↩
'./spec/integration/app/ledger_spec.rb[1:1:1:1,1:1:2:1]' --seed 32043
Run options: include                                                        ↩
{:ids=>{"./spec/acceptance/expense_tracker_api_spec.rb"=>["1:1"],           ↩
"./spec/integration/app/ledger_spec.rb"=>["1:1:1:1", "1:1:2:1"]}}

Randomized with seed 32043
[33m*[0m[31mF[0m[31mF[0m

<literal:elide> truncated </literal:elide>

Finished in 0.0485 seconds (files took 0.21859 seconds to load)
[31m3 examples, 2 failures, 1 pending[0m

Failed examples:

[31mrspec ./spec/integration/app/ledger_spec.rb:20[0m [36m#                            ↩
ExpenseTracker::Ledger#record with a valid expense successfully saves the   ↩
expense in the DB[0m
[31mrspec ./spec/integration/app/ledger_spec.rb:34[0m [36m#                            ↩
ExpenseTracker::Ledger#record when the expense lacks a payee rejects the    ↩
expense as invalid[0m

Randomized with seed 32043
</ansii>
