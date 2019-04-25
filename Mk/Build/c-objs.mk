.ifndef _${BP}_rules_c-objs
_${BP}_rules_c-objs=

ccvar:=CC
langname:=C
flagpref:=C

# Needs to be fixed:
# Make sure user isn't doing fancy tricks by passing flags to echo
SRCS!=echo ${${BP}.srcs.c}

.include "common/ccc-objs.mk"

.endif
