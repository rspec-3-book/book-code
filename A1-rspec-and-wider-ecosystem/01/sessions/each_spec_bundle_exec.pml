<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
$ time (for file in spec/**/*_spec.rb                                       ↩
          do bundle exec rspec $file || exit 1                              ↩
        done) > /dev/null

1.50s user 0.17s system 98% cpu 1.707 total
</ansii>
