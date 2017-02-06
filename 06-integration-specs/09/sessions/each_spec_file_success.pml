<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ (for f in `find spec -iname '*_spec.rb'`; do echo "$f:"; bundle exec rspec↩
$f -fp || exit 1; done)
spec/acceptance/expense_tracker_api_spec.rb:

Randomized with seed 51053
[32m.[0m

Finished in 0.02856 seconds (files took 0.20092 seconds to load)
[32m1 example, 0 failures[0m

Randomized with seed 51053

spec/integration/app/ledger_spec.rb:

Randomized with seed 43562
[32m.[0m[32m.[0m[32m.[0m[32m.[0m

Finished in 0.01813 seconds (files took 0.1525 seconds to load)
[32m4 examples, 0 failures[0m

Randomized with seed 43562

spec/unit/app/api_spec.rb:

Randomized with seed 3943
[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m[32m.[0m

Finished in 0.04542 seconds (files took 0.22134 seconds to load)
[32m8 examples, 0 failures[0m

Randomized with seed 3943
</ansii>
