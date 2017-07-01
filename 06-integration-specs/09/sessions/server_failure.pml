<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rackup
[2017-06-13 13:34:47] INFO  WEBrick 1.3.1
[2017-06-13 13:34:47] INFO  ruby 2.4.1 (2017-03-22) [x86_64-darwin15]
[2017-06-13 13:34:47] INFO  WEBrick::HTTPServer#start: pid=45899 port=9292
2017-06-13 13:34:47 - NameError - uninitialized constant                    ↩
ExpenseTracker::Ledger::DB:
    ~/code/expense_tracker/app/ledger.rb:17:in `expenses_on'
    ~/code/expense_tracker/app/api.rb:25:in `block in <class:API>'

<literal:elide> truncated </literal:elide>

::1 - - [13/Jun/2017:13:34:47 -0700] "GET /expenses/2017-06-10 HTTP/1.1"    ↩
500 6642 0.0019
[2017-06-13 13:34:47] INFO  going to shutdown ...
[2017-06-13 13:34:47] INFO  WEBrick::HTTPServer#start done.
</ansii>
