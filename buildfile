# file      : buildfile
# copyright : Copyright (c) 2013-2014 Code Synthesis Tools CC
# license   : MIT; see accompanying LICENSE file

d = xml/ doc/
./: $d doc{INSTALL LICENSE NEWS README version} file{manifest}
include $d

# Don't install tests or the INSTALL file.
#
dir{tests/}: install = false
doc{INSTALL}@./: install = false
