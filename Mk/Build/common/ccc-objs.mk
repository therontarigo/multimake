
OBJS:=${SRCS:%=${BUILDDIR}/obj/%.o}
.if "${SRCS}" == ""
.warning No ${langname} sources specified for ${BP}
OBJS:=
.endif
${BP}._OBJS:=${OBJS}
${BP}.CPPFLAGS?=${CPPFLAGS}
.for flagpref in ${flagpref}
${BP}.${flagpref}FLAGS?=${${flagpref}FLAGS}
.for ccvar in ${ccvar}
.for src in ${SRCS}
.for BP in ${BP}
${src:%=${BUILDDIR}/obj/%.o}: ${src}
	@${MKDIR} $$(dirname ${.TARGET})
	${${ccvar}} -o ${.TARGET} -c ${src} ${${BP}.CPPFLAGS} ${${BP}.${flagpref}FLAGS} -fPIC
.endfor
.endfor
.endfor
.endfor
${BP}._products: ${${BP}._OBJS}
