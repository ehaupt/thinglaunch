PROGRAM=	thinglaunch
SRC=		thinglaunch.c

CFLAGS+=	`pkg-config --cflags x11 xrandr`
LDFLAGS+=	`pkg-config --libs x11 xrandr`

all: build

build:
	${CC} ${CFLAGS} ${LDFLAGS} ${SRC} -o ${PROGRAM}

clean:
	rm -rf ${PROGRAM}
