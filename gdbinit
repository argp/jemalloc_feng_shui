set disassembly-flavor intel

set breakpoint pending on

set confirm off
set verbose off
set height 0
set width 0

handle SIG33 noprint nostop
handle SIG32 noprint nostop pass
handle SIGPIPE noprint nostop pass

# source unmask_jemalloc.py,
# change these paths to correspond to your installation
python import sys
python sys.path.append("../unmask_jemalloc")
source ../unmask_jemalloc/unmask_jemalloc.py

# breakpoints

# after initial spray
br asin

# after garbage collection
br acos

display /i $rip

continue

# EOF
