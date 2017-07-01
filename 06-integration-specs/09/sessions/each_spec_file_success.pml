<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ (for f in `find spec -iname '*_spec.rb'`; do                              ↩
    echo "$f:"                                                              ↩
    bundle exec rspec $f -fp || exit 1                                      ↩
  done)
spec/acceptance/expense_tracker_api_spec.rb:

Randomized with seed 64689
[32m.[0m

Finished in 0.02758 seconds (files took 0.20933 seconds to load)
[32m1 example, 0 failures[0m

Randomized with seed 64689

spec/integration/app/ledger_spec.rb:

Randomized with seed 7247
[32m.[0m[32m.[0m[32m.[0m[32m.[0m

Finished in 0.01689 seconds (files took 0.15956 seconds to load)
[32m4 examples, 0 failures[0m

Randomized with seed 7247

spec/unit/app/api_spec.rb:

Randomized with seed 21495
[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m

Finished in 0.02619 seconds (files took 0.21264 seconds to load)
[32m8 examples, 0 failures[0m

Randomized with seed 21495
</ansii>
