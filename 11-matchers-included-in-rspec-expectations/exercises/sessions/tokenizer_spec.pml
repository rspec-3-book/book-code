<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec tokenizer_spec.rb
[31mF[0m

Failures:

  1) Tokenizer tokenizes multiple lines of text
     [31mFailure/Error: [0m[32mexpect[0m(tokenized.first([1;34m6[0m)).to eq [[31m[1;31m'[0m[31mI[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mam[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mSam.[1;31m'[0m[31m[0m,    ↩
     [31m[1;31m'[0m[31mSam[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mI[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31mam[1;31m'[0m[31m[0m][0m
     [31m[0m
     [31m  expected: ["I", "am", "Sam.", "Sam", "I", "am"][0m
     [31m       got: ["", "I", "am", "Sam.\n", "Sam", "I"][0m
     [31m[0m
     [31m  (compared using ==)[0m
     [31m[0m
     [31m  Diff:[0m[0m
     [31m  [0m[0m[0m
     [31m  [0m[0m[0m
     [31m  [0m[34m@@ -1,7 +1,7 @@[0m
     [31m  [0m[32m+[0m
     [31m  [0m[0m I[0m
     [31m  [0m[0m am[0m
     [31m  [0m[31m-Sam.[0m
     [31m  [0m[32m+Sam.\n[0m
     [31m  [0m[0m Sam[0m
     [31m  [0m[0m I[0m
     [31m  [0m[31m-am[0m
     [31m  [0m[0m
     [36m# ./tokenizer_spec.rb:18:in `block (2 levels) in <top (required)>'[0m

Finished in 0.01066 seconds (files took 0.08238 seconds to load)
[31m1 example, 1 failure[0m

Failed examples:

[31mrspec ./tokenizer_spec.rb:16[0m [36m# Tokenizer tokenizes multiple lines of text[0m
</ansii>
