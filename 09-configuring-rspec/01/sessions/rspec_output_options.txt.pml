<?xml version="1.0" encoding="UTF-8"?>  <!-- -*- xml -*- -->
<!DOCTYPE chapter SYSTEM "local/xml/markup.dtd">
<ansii>
**** Output ****

  -f, --format FORMATTER             Choose a formatter.
                                       [p]rogress (default - dots)
                                       [d]ocumentation (group and example   ↩
                                          names)
                                       [h]tml
                                       [j]son
                                       custom formatter class name
  -o, --out FILE                     Write output to a file instead of      ↩
                                     $stdout. This option applies to the    ↩
                                     previously specified --format, or the  ↩
                                     default format if no format is         ↩
                                     specified.
      --deprecation-out FILE         Write deprecation warnings to a file   ↩
                                     instead of $stderr.
  -b, --backtrace                    Enable full backtrace.
      --force-color, --force-colour  Force the output to be in color, even  ↩
                                     if the output is not a TTY
      --no-color, --no-colour        Force the output to not be in color,   ↩
                                     even if the output is a TTY
  -p, --[no-]profile [COUNT]         Enable profiling of examples and list  ↩
                                     the slowest examples (default: 10).
      --dry-run                      Print the formatter output of your     ↩
                                     suite without running any examples or  ↩
                                     hooks
  -w, --warnings                     Enable ruby warnings
</ansii>
