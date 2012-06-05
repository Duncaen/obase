USE_DPADD_MK=yes
COPTS+= -isystem ${.CURDIR}/libobase/include -DOBASE -D_GNU_SOURCE -Os -Wall
COPTS+= -DMACHINE='"${MACHINE}"' -DMACHINE_ARCH='"${MACHINE_ARCH}"'
HOSTCC=${CC}
HOSTCFLAGS+=${COPTS}
LIBOBASE=${.CURDIR}/libobase/libobase.a
INCLUDES_libobase=-isystem ${.CURDIR}/libobase/include
DPLIBS+=${LIBOBASE}
.export COPTS DPLIBS HOSTCC HOSTCFLAGS USE_DPADD_MK

SUBDIR=\
libobase \
\
src/bin/cat \
xsrc/bin/chmod \
xsrc/bin/cp \
xsrc/bin/date \
xsrc/bin/dd \
xsrc/bin/domainname \
src/bin/echo \
src/bin/ed \
src/bin/expr \
src/bin/hostname \
src/bin/kill \
src/bin/ksh \
src/bin/ln \
xsrc/bin/ls \
xsrc/bin/md5 \
src/bin/mkdir \
src/bin/mv \
xsrc/bin/pax \
src/bin/pwd \
xsrc/bin/rm \
src/bin/rmail \
src/bin/rmdir \
src/bin/sleep \
src/bin/sync \
src/bin/test \
\
src/usr.bin/apply \
src/usr.bin/apropos \
src/usr.bin/ar \
src/usr.bin/arch \
src/usr.bin/asa \
xsrc/usr.bin/awk \
src/usr.bin/banner \
src/usr.bin/basename \
src/usr.bin/biff \
src/usr.bin/cal \
xsrc/usr.bin/cmp \
src/usr.bin/col \
src/usr.bin/colrm \
src/usr.bin/column \
src/usr.bin/comm \
src/usr.bin/cpp \
src/usr.bin/csplit \
src/usr.bin/ctags \
src/usr.bin/cut \
xsrc/usr.bin/dc \
src/usr.bin/deroff \
src/usr.bin/diff \
src/usr.bin/diff3 \
src/usr.bin/dirname \
xsrc/usr.bin/du \
src/usr.bin/env \
src/usr.bin/expand \
src/usr.bin/false \
src/usr.bin/fgen \
src/usr.bin/file \
src/usr.bin/file2c \
src/usr.bin/finger \
src/usr.bin/fmt \
src/usr.bin/fold \
src/usr.bin/from \
src/usr.bin/fsplit \
src/usr.bin/getconf \
xsrc/usr.bin/getent \
src/usr.bin/getopt \
xsrc/usr.bin/gzsig \
src/usr.bin/head \
src/usr.bin/hexdump \
src/usr.bin/id \
src/usr.bin/indent \
src/usr.bin/ipcrm \
src/usr.bin/join \
src/usr.bin/jot \
src/usr.bin/lam \
src/usr.bin/last \
src/usr.bin/leave \
xsrc/usr.bin/lex \
src/usr.bin/lndir \
src/usr.bin/logger \
src/usr.bin/logname \
src/usr.bin/look \
src/usr.bin/lorder \
xsrc/usr.bin/m4 \
xsrc/usr.bin/mail \
xsrc/usr.bin/make \
xsrc/usr.bin/man \
xsrc/usr.bin/mandoc \
src/usr.bin/mesg \
src/usr.bin/mkdep \
src/usr.bin/mkstr \
src/usr.bin/mktemp \
src/usr.bin/nice \
src/usr.bin/nohup \
src/usr.bin/paste \
src/usr.bin/patch \
src/usr.bin/pkg-config \
src/usr.bin/pr \
src/usr.bin/printenv \
src/usr.bin/printf \
src/usr.bin/ranlib \
xsrc/usr.bin/rcs \
src/usr.bin/readlink \
src/usr.bin/renice \
src/usr.bin/rev \
xsrc/usr.bin/rpcgen \
xsrc/usr.bin/rpcinfo \
src/usr.bin/rs \
xsrc/usr.bin/script \
src/usr.bin/sdiff \
xsrc/usr.bin/sed \
src/usr.bin/shar \
xsrc/usr.bin/sort \
src/usr.bin/spell \
xsrc/usr.bin/split \
xsrc/usr.bin/strings \
src/usr.bin/tee \
src/usr.bin/time \
xsrc/usr.bin/touch \
src/usr.bin/tr \
src/usr.bin/true \
src/usr.bin/tsort \
src/usr.bin/tty \
xsrc/usr.bin/ul \
src/usr.bin/uname \
src/usr.bin/unexpand \
src/usr.bin/unifdef \
src/usr.bin/uniq \
src/usr.bin/units \
src/usr.bin/unvis \
src/usr.bin/users \
xsrc/usr.bin/uudecode \
xsrc/usr.bin/uuencode \
xsrc/usr.bin/vacation \
src/usr.bin/vis \
src/usr.bin/wall \
src/usr.bin/wc \
src/usr.bin/what \
src/usr.bin/whatis \
src/usr.bin/which \
src/usr.bin/who \
src/usr.bin/whois \
src/usr.bin/write \
src/usr.bin/xargs \
src/usr.bin/xstr \
src/usr.bin/yacc \
src/usr.bin/yes

.include <bsd.subdir.mk>
