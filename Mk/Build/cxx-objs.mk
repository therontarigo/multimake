.ifndef _${BP}_rules_cxx-objs
_${BP}_rules_cxx-objs=

ccvar:=CXX
langname:=C++
flagpref:=CXX

# Needs to be fixed:
# Make sure user isn't doing fancy tricks by passing flags to echo
SRCS!=echo ${${BP}.srcs.cxx}

.include "common/ccc-objs.mk"

.endif
