# file      : buildfile
# license   : MIT; see accompanying LICENSE file

./: {*/ -build/} doc{INSTALL LICENSE NEWS README} manifest

# Don't install examples, tests or the INSTALL file.
#
examples/:       install = false
tests/:          install = false
doc{INSTALL}@./: install = false
