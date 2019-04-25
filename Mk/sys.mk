CFLAGS=-pipe
CXXFLAGS=-pipe

.include "${.CURDIR}/Makefile"

.OBJDIR: ${.CURDIR}

.MAIN: all

.include "defaults.mk"
#BUILDDIR:=${BUILDDIR:S/^.\///}
BUILDDIR:=${BUILDDIR:./%=%}

clean:
	rm -rf ${BUILDDIR}

MKDIR?=mkdir -p

.for prod in ${PRODUCTS}
.if "${${prod}.build}" == ""
.warning No build specified for product ${prod}
.endif
.for build in ${${prod}.build}
BP:=${prod}
.include "Build/${build}.mk"
.endfor
all: ${prod}._products
.endfor

mksummary:
	@echo PRODUCTS=${PRODUCTS}
.for prod in ${PRODUCTS}
	@echo ${prod}.build=${${prod}.build}
	@echo ${prod}.OBJS=${${prod}.OBJS}
	@echo ${prod}.CPPFLAGS=${${prod}.CPPFLAGS}
	@echo ${prod}.CFLAGS=${${prod}.CFLAGS}
	@echo ${prod}.CXXFLAGS=${${prod}.CXXFLAGS}
.endfor
