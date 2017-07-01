<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ curl localhost:9292/expenses/2017-06-10 -w "\n"
NameError: uninitialized constant ExpenseTracker::Ledger::DB
    ~/code/expense_tracker/app/ledger.rb:17:in `expenses_on'
    ~/code/expense_tracker/app/api.rb:25:in `block in <class:API>'

<literal:elide> truncated </literal:elide>
</ansii>
