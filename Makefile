PROGRAM=	thinglaunch
SRC=		thinglaunch.c

CC?=		cc
PREFIX?=	/usr/local

CFLAGS+=	`pkg-config --cflags x11 xrandr`
LDFLAGS+=	`pkg-config --libs x11 xrandr`

all: build

build:
	${CC} ${CFLAGS} ${LDFLAGS} ${SRC} -o ${PROGRAM}

strip:
	@strip ${PROGRAM}

install: strip
	install -s -m 555 ${PROGRAM} ${DESTDIR}${PREFIX}/bin

clean:
	@rm -rf ${PROGRAM}
