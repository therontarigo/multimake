## .include "common/cxx.mk"

.ifndef ${BP}.lib
${BP}.lib:=${BP}
.endif

OUTPUT:=${BUILDDIR}/lib/lib${${BP}.lib}.so
.ifndef lib${${BP}.lib}
lib${${BP}.lib}:=${OUTPUT}
.endif
.include "uselibs.mk"

${BP}.LDFLAGS?=${LDFLAGS}

.for BP in ${BP}
.for ccvar in ${ccvar}
${BUILDDIR}/lib/lib${${BP}.lib}.so: ${${BP}._OBJS}
	@${MKDIR} $$(dirname ${.TARGET})
	${${ccvar}} -o ${.TARGET} -shared ${${BP}._OBJS} ${${BP}.LDFLAGS}\
	  -L${BUILDDIR}/lib ${${BP}.uselibs:%=-l%}
${BP}._products: ${BUILDDIR}/lib/lib${${BP}.lib}.so
.endfor
.endfor
