## .include "common/cxx.mk"

.ifndef ${BP}.exe
${BP}.exe:=${BP}
.endif

OUTPUT:=${BUILDDIR}/bin/${${BP}.exe}
.include "uselibs.mk"

${BP}.LDFLAGS?=${LDFLAGS}

.for BP in ${BP}
.for ccvar in ${ccvar}
${BUILDDIR}/bin/${${BP}.exe}: ${${BP}._OBJS}
	@${MKDIR} $$(dirname ${.TARGET})
	${${ccvar}} -o ${.TARGET} ${${BP}._OBJS} ${${BP}.LDFLAGS}\
	  -L${BUILDDIR}/lib ${${BP}.uselibs:%=-l%}
${BP}._products: ${BUILDDIR}/bin/${${BP}.exe}
.endfor
.endfor
