# file      : buildfile
# copyright : Copyright (c) 2013-2017 Code Synthesis Tools CC
# license   : MIT; see accompanying LICENSE file

./: {*/ -build/} doc{INSTALL LICENSE NEWS README version} file{manifest}

# The version file is auto-generated (by the version module) from manifest.
# Include it in distribution and don't remove when cleaning in src (so that
# clean results in a state identical to distributed).
#
doc{version}: file{manifest}
doc{version}: dist  = true
doc{version}: clean = ($src_root != $out_root)

# Don't install examples, tests or the INSTALL file.
#
dir{examples/}:  install = false
dir{tests/}:     install = false
doc{INSTALL}@./: install = false
