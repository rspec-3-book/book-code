<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec public_company_spec.rb
[31mF[0m[31mF[0m

Failures:

  1) PublicCompany increases its market cap when it gets better than        ↩
  expected revenues
     [31mFailure/Error: [0m[32mexpect[0m(after_market_cap - before_market_cap).to be >=   ↩
     [1;34m50_000[0m[0m
     [31m[0m
     [31m  expected: >= 50000[0m
     [31m       got:    0[0m
     [36m# ./public_company_spec.rb:19:in `block (2 levels) in <top (required)>'[0m

  2) PublicCompany provides attributes
     [31mFailure/Error: [0m[32mexpect[0m(company.name).to eq([31m[1;31m'[0m[31mNil[1;31m'[0m[31m[0m)[0m
     [31m[0m
     [31m  expected: "Nil"[0m
     [31m       got: "Nile"[0m
     [31m[0m
     [31m  (compared using ==)[0m
     [36m# ./public_company_spec.rb:23:in `block (2 levels) in <top (required)>'[0m

Finished in 0.01061 seconds (files took 0.07904 seconds to load)
[31m2 examples, 2 failures[0m

Failed examples:

[31mrspec ./public_company_spec.rb:14[0m [36m# PublicCompany increases its market cap  ↩
when it gets better than expected revenues[0m
[31mrspec ./public_company_spec.rb:22[0m [36m# PublicCompany provides attributes[0m
</ansii>
