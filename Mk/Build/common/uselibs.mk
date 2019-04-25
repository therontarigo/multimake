
.for LIB in ${${BP}.uselibs}
.for libvar in lib${LIB}
${OUTPUT}: ${${libvar}}
.endfor
.endfor

