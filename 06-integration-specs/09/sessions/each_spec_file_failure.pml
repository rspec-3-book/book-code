<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ (for f in `find spec -iname '*_spec.rb'`; do                              ↩
    echo "$f:"                                                              ↩
    bundle exec rspec $f -fp || exit 1                                      ↩
  done)
spec/acceptance/expense_tracker_api_spec.rb:

Randomized with seed 24954

An error occurred in a `before(:suite)` hook.
[31mFailure/Error: [0m[1;34;4mSequel[0m.extension [33m:migration[0m[0m
[31m[0m
[31mNameError:[0m
[31m  uninitialized constant Sequel[0m
[36m# ./spec/support/db.rb:3:in `block (2 levels) in <top (required)>'[0m


Finished in 0.01902 seconds (files took 0.16858 seconds to load)
[31m0 examples, 0 failures, 1 error occurred outside of examples[0m

Randomized with seed 24954
</ansii>
