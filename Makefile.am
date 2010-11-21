AUTOMAKE_OPTIONS = subdir-objects
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS} -I m4
AM_CPPFLAGS = $(LIBUSB_CFLAGS) $(GLUT_CFLAGS) -Iinclude

lib_LTLIBRARIES = libfreenect.la
libfreenect_la_SOURCES = src/cameras.c src/core.c \
	src/inits.c src/tilt.c src/usb_libusb10.c
libfreenect_la_LIBADD = $(LIBUSB_LIBS)

library_includedir=$(includedir)/freenect
library_include_HEADERS = include/libfreenect.h

pkgconfigdir = $(libdir)/pkgconfig

bin_PROGRAMS = glview

glview_SOURCES = examples/glview.c
glview_LDADD = $(GLUT_LIBS)  -lpthread -lfreenect

dist_noinst_SCRIPTS = autogen.sh
