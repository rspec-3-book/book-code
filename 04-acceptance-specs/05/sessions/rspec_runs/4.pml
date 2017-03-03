<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rspec
[31mF[0m

Failures:

  1) Expense Tracker API records submitted expenses
     [31mFailure/Error: [0m[32mexpect[0m(expenses).to contain_exactly(coffee, zoo)[0m
     [31m[0m
     [31m  expected collection contained:  [{"payee"=>"Starbucks",              ↩
       "amount"=>5.75, "date"=>"2017-06-10", "id"=>42}, {"payee"=>"Zoo",    ↩
       "amount"=>15.25, "date"=>"2017-06-10", "id"=>42}][0m
     [31m  actual collection contained:    [][0m
     [31m  the missing elements were:      [{"payee"=>"Starbucks",              ↩
       "amount"=>5.75, "date"=>"2017-06-10", "id"=>42}, {"payee"=>"Zoo",    ↩
       "amount"=>15.25, "date"=>"2017-06-10", "id"=>42}][0m

<literal:elide> truncated </literal:elide>
</ansii>
