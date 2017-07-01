<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ bundle exec rackup
[2017-06-13 13:34:49] INFO  WEBrick 1.3.1
[2017-06-13 13:34:49] INFO  ruby 2.4.1 (2017-03-22) [x86_64-darwin15]
[2017-06-13 13:34:49] INFO  WEBrick::HTTPServer#start: pid=45924 port=9292
::1 - - [13/Jun/2017:13:34:49 -0700] "POST /expenses HTTP/1.1" 200 16 0.0090
::1 - - [13/Jun/2017:13:34:49 -0700] "POST /expenses HTTP/1.1" 200 16 0.0017
::1 - - [13/Jun/2017:13:34:49 -0700] "GET /expenses/2017-06-10 HTTP/1.1"    ↩
200 120 0.0020
[2017-06-13 13:34:49] INFO  going to shutdown ...
[2017-06-13 13:34:49] INFO  WEBrick::HTTPServer#start done.
</ansii>
