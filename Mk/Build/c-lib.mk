.ifndef _${BP}_rules_c-lib
_${BP}_rules_c-lib=

.include "c-objs.mk"

ccvar:=CC
langname:=C
flagpref:=C

.include "common/ccc-lib.mk"

.endif
