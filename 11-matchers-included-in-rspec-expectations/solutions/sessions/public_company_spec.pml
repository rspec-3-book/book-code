<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec public_company_spec.rb
[31mF[0m[31mF[0m

Failures:

  1) PublicCompany increases its market cap when it gets better than        ↩
  expected revenues
     [31mFailure/Error:[0m
     [31m  [0m[32mexpect[0m {[0m
     [31m    [0mcompany.got_better_than_expected_revenues[0m
     [31m  [0m}.to change(company, [33m:market_cap[0m).by_at_least([1;34m50_000[0m)[0m
     [31m[0m
     [31m  expected #market_cap to have changed by at least 50000, but was      ↩
       changed by 0[0m
     [36m# ./public_company_spec.rb:15:in `block (2 levels) in <top (required)>'[0m

  2) PublicCompany provides attributes
     [31mFailure/Error:[0m
     [31m  [0m[32mexpect[0m(company).to have_attributes([0m
     [31m    [0m[35mname[0m: [31m[1;31m'[0m[31mNil[1;31m'[0m[31m[0m,[0m
     [31m    [0m[35mvalue_per_share[0m: [1;34m10[0m,[0m
     [31m    [0m[35mshare_count[0m: [1;34m10_000[0m,[0m
     [31m    [0m[35mmarket_cap[0m: [1;34m1_000_000[0m[0m
     [31m  [0m)[0m
     [31m[0m
     [31m  expected #<struct PublicCompany name="Nile", value_per_share=10,     ↩
       share_count=100000> to have attributes {:name => "Nil",              ↩
       :value_per_share => 10, :share_count => 10000, :market_cap =>        ↩
       1000000} but had attributes {:name => "Nile", :value_per_share =>    ↩
       10, :share_count => 100000, :market_cap => 1000000}[0m
     [31m  Diff:[0m[0m
     [31m  [0m[34m@@ -1,5 +1,5 @@[0m
     [31m  [0m[0m :market_cap => 1000000,[0m
     [31m  [0m[31m-:name => "Nil",[0m
     [31m  [0m[31m-:share_count => 10000,[0m
     [31m  [0m[32m+:name => "Nile",[0m
     [31m  [0m[32m+:share_count => 100000,[0m
     [31m  [0m[0m :value_per_share => 10,[0m
     [31m  [0m[0m
     [36m# ./public_company_spec.rb:21:in `block (2 levels) in <top (required)>'[0m

Finished in 0.01248 seconds (files took 0.07821 seconds to load)
[31m2 examples, 2 failures[0m

Failed examples:

[31mrspec ./public_company_spec.rb:14[0m [36m# PublicCompany increases its market cap  ↩
when it gets better than expected revenues[0m
[31mrspec ./public_company_spec.rb:20[0m [36m# PublicCompany provides attributes[0m
</ansii>
