#!/bin/sh
MKREL=$(dirname -- "$0")
echo '.MAKEFLAGS:-m "${.CURDIR}/'"${MKREL}"'"' > BSDmakefile
echo '.include "sys.mk"' >> BSDmakefile
echo BSDmakefile
echo 'MK?=${CURDIR}/'"${MKREL}"'' > GNUmakefile
echo 'include ${MK}/sys.gmk' >> GNUmakefile
echo GNUmakefile
