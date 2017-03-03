<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec phone_number_extractor_spec.rb
[31mF[0m

Failures:

  1) PhoneNumberExtractor yields phone numbers as it finds them
     [31mFailure/Error:[0m
     [31m  [0m[32mexpect[0m { |probe|[0m
     [31m    [0m[1;34;4mPhoneNumberExtractor[0m.extract_from(text, &probe)[0m
     [31m  [0m}.to yield_successive_args([0m
     [31m    [0m[31m[1;31m'[0m[31m(202) 555-0168[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31m202-555-0199[1;31m'[0m[31m[0m, [31m[1;31m'[0m[31m(202) 555-0175[1;31m'[0m[31m[0m[0m
     [31m  [0m)[0m
     [31m[0m
     [31m  expected given block to yield successively with arguments, but       ↩
       yielded with unexpected arguments[0m
     [31m  expected: ["(202) 555-0168", "202-555-0199", "(202) 555-0175"][0m
     [31m       got: [][0m
     [36m# ./phone_number_extractor_spec.rb:18:in `block (2 levels) in <top     ↩
     (required)>'[0m

Finished in 0.01066 seconds (files took 0.08066 seconds to load)
[31m1 example, 1 failure[0m

Failed examples:

[31mrspec ./phone_number_extractor_spec.rb:17[0m [36m# PhoneNumberExtractor yields     ↩
phone numbers as it finds them[0m
</ansii>
