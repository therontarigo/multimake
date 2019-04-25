.ifndef _${BP}_rules_c-exe
_${BP}_rules_c-exe=

.include "c-objs.mk"

ccvar:=CC
langname:=C
flagpref:=C

.include "common/ccc-exe.mk"

.endif
