# dmenu version
VERSION = 4.6

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

PIXMANINC = /usr/include/pixman-1
SWCPROTO = /usr/share/swc/swc.xml

# includes and libs
INCS = -I${PIXMANINC}
LIBS =  /usr/lib/*.a -lwayland-client -lxkbcommon -lwld -lfontconfig -lffi -lpixman-1 -lfreetype -lpng -lxml2 -lz -lwld -ldrm -lexpat -llzma

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION=\"${VERSION}\"
CFLAGS   = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = -s ${LIBS} -static

# compiler and linker
CC = cc
