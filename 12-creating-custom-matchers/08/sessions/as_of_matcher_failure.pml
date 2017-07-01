<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
1) `have_a_balance_of(amount)` fails when a date's balance does not match
   [31mFailure/Error: [0m[32mexpect[0m(account).to                                        ↩
   have_a_balance_of([1;34m15[0m).as_of([1;34;4mDate[0m.new([1;34m2017[0m, [1;34m6[0m, [1;34m12[0m))[0m
   [31m  expected #<Account name="Checking"> to have a balance of 15 as of    ↩
     #<Date: 2017-06-12 ((2457917j,0s,0n),+0s,2299161j)>, but had a       ↩
     balance of 10[0m
   [36m# ./spec/as_of_account_spec.rb:19:in `block (2 levels) in <top
</ansii>
