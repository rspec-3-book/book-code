<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
**** Filtering/tags ****

  In addition to the following options for selecting specific files,
  groups, or examples, you can select individual examples by appending
  the line number(s) to the filename:

    rspec path/to/a_spec.rb:37:87

  You can also pass example ids enclosed in square brackets:

    rspec path/to/a_spec.rb[1:5,1:6] # run the 5th and 6th examples/groups  ↩
                                       defined in the 1st group

      --only-failures                Filter to just the examples that       ↩
                                     failed the last time they ran.
      --next-failure                 Apply `--only-failures` and abort      ↩
                                     after one failure. (Equivalent to      ↩
                                     `--only-failures --fail-fast --order   ↩
                                     defined`)
  -P, --pattern PATTERN              Load files matching pattern (default:  ↩
                                     "spec/**/*_spec.rb").
      --exclude-pattern PATTERN      Load files except those matching       ↩
                                     pattern. Opposite effect of --pattern.
  -e, --example STRING               Run examples whose full nested names   ↩
                                     include STRING (may be used more than  ↩
                                     once)
  -t, --tag TAG[:VALUE]              Run examples with the specified tag,   ↩
                                     or exclude examples by adding ~ before ↩
                                     the tag.
                                       - e.g. ~slow
                                       - TAG is always converted to a symbol
      --default-path PATH            Set the default path where RSpec looks ↩
                                     for examples (can be a path to a file  ↩
                                     or a directory).
</ansii>
