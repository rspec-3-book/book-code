<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ for f in `find spec -iname '*_spec.rb'`
  do
    echo "$f:"
    bundle exec rspec $f -fp || exit 1
  done
spec/acceptance/expense_tracker_api_spec.rb:

Randomized with seed 2774
[32m.[0m

Finished in 0.02698 seconds (files took 0.21011 seconds to load)
[32m1 example, 0 failures[0m

Randomized with seed 2774

spec/integration/app/ledger_spec.rb:

Randomized with seed 29894
[32m.[0m[32m.[0m[32m.[0m[32m.[0m

Finished in 0.01769 seconds (files took 0.16134 seconds to load)
[32m4 examples, 0 failures[0m

Randomized with seed 29894

spec/unit/app/api_spec.rb:

Randomized with seed 11098
[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m

Finished in 0.0311 seconds (files took 0.22299 seconds to load)
[32m8 examples, 0 failures[0m

Randomized with seed 11098
</ansii>
