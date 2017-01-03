# file      : buildfile
# copyright : Copyright (c) 2013-2017 Code Synthesis Tools CC
# license   : MIT; see accompanying LICENSE file

d = xml/ examples/ tests/ doc/
./: $d doc{INSTALL LICENSE NEWS README version} file{manifest}
include $d

# Don't install examples, tests or the INSTALL file.
#
dir{examples/}: install = false
dir{tests/}: install = false
doc{INSTALL}@./: install = false
