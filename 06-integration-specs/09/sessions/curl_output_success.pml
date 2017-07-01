<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ curl localhost:9292/expenses --data '{"payee":"Zoo", "amount":10,         ↩
"date":"2017-06-10"}' -w "\n"
{"expense_id":1}
$ curl localhost:9292/expenses --data '{"payee":"Starbucks", "amount":7.5,  ↩
"date":"2017-06-10"}' -w "\n"
{"expense_id":2}
$ curl localhost:9292/expenses/2017-06-10 -w "\n"
[{"id":1,"payee":"Zoo","amount":10.0,"date":"2017-06-10"},{"id":2,"payee":"St
arbucks","amount":7.5,"date":"2017-06-10"}]
</ansii>
