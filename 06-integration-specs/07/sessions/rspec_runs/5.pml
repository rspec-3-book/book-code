<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec --bisect --seed 32043
Bisect started using options: "--seed 32043"
Running suite to find failures... (0.45293 seconds)
Starting bisect with 2 failing examples and 9 non-failing examples.
Checking that failure(s) are order-dependent... failure appears to be       ↩
order-dependent

Round 1: bisecting over non-failing examples 1-9 . ignoring examples 1-5    ↩
(0.45132 seconds)
Round 2: bisecting over non-failing examples 6-9 . ignoring examples 6-7    ↩
(0.43739 seconds)
Round 3: bisecting over non-failing examples 8-9 . ignoring example 8       ↩
(0.43102 seconds)
Bisect complete! Reduced necessary non-failing examples from 9 to 1 in 1.64 ↩
seconds.

The minimal reproduction command is:
  rspec './spec/acceptance/expense_tracker_api_spec.rb[1:1]'                ↩
  './spec/integration/app/ledger_spec.rb[1:1:1:1,1:1:2:1]' --seed 32043
</ansii>
