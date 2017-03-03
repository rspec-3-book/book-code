<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ rspec 
[32m.[0m[31mF[0m

Failures:

  1) PasswordStrengthValidator is strong enough when the password is long   ↩
  enough
     [31mFailure/Error: [0m[32mexpect[0m(validator.strong_enough?).to eq [1;36mtrue[0m[0m
     [31m[0m
     [31m  expected: true[0m
     [31m       got: false[0m
     [31m[0m
     [31m  (compared using ==)[0m
     [36m# ./spec/password_strength_validator_spec.rb:11:in `block (2 levels) in↩
     <top (required)>'[0m

Finished in 0.01041 seconds (files took 0.08058 seconds to load)
[31m2 examples, 1 failure[0m

Failed examples:

[31mrspec ./spec/password_strength_validator_spec.rb:9[0m [36m#                        ↩
PasswordStrengthValidator is strong enough when the password is long enough[0m
</ansii>
