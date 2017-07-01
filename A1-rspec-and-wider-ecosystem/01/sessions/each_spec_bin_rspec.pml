<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ time (for file in spec/**/*_spec.rb                                       ↩
          do bin/rspec $file || exit 1                                      ↩
        done) > /dev/null

0.85s user 0.11s system 97% cpu 0.983 total
</ansii>
