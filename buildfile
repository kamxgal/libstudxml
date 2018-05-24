# file      : buildfile
# copyright : Copyright (c) 2013-2018 Code Synthesis Tools CC
# license   : MIT; see accompanying LICENSE file

./: {*/ -build/} doc{INSTALL LICENSE NEWS README} manifest

# Don't install examples, tests or the INSTALL file.
#
dir{examples/}:  install = false
dir{tests/}:     install = false
doc{INSTALL}@./: install = false
