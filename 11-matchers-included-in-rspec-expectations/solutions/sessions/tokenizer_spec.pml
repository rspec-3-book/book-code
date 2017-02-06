<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec tokenizer_spec.rb
[31mF[0m

Failures:

  1) Tokenizer tokenizes multiple lines of text
     [31mFailure/Error: [0m[32mexpect[0m(tokenized).to start_with([31m[1;31m'[0m[31mI[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mam[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mSam.[1;31m'[0m[31m[0m,      ↩
     [31m[1;31m'[0m[31mSam[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mI[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mam[1;31m'[0m[31m[0m)[0m
     [31m  expected ["", "I", "am", "Sam.\n", "Sam", "I", "am.\n", "Do", "you", ↩
       "like", "green", "eggs", "and", "ham?\n"] to start with "I", "am",   ↩
       "Sam.", "Sam", "I", and "am"[0m
     [36m# ./tokenizer_spec.rb:18:in `block (2 levels) in <top (required)>'[0m

Finished in 0.01074 seconds (files took 0.07581 seconds to load)
[31m1 example, 1 failure[0m

Failed examples:

[31mrspec ./tokenizer_spec.rb:16[0m [36m# Tokenizer tokenizes multiple lines of text[0m
</ansii>
