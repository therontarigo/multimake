.ifndef _${BP}_rules_cxx-exe
_${BP}_rules_cxx-exe=

.include "cxx-objs.mk"

ccvar:=CXX
langname:=C++
flagpref:=CXX

.include "common/ccc-exe.mk"

.endif
