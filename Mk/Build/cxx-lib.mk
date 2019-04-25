.ifndef _${BP}_rules_cxx-lib
_${BP}_rules_cxx-lib=

.include "cxx-objs.mk"

ccvar:=CXX
langname:=C++
flagpref:=CXX

.include "common/ccc-lib.mk"

.endif
