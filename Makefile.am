AUTOMAKE_OPTIONS = subdir-objects
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS} -I m4
AM_CPPFLAGS = $(LIBUSB_CFLAGS) $(GLUT_CFLAGS) -Iinclude

lib_LTLIBRARIES = libfreenect.la
libfreenect_la_SOURCES = lib/accelerometers.c lib/cameras.c lib/core.c \
	lib/inits.c lib/motors.c lib/usb_libusb10.c
libfreenect_la_LIBADD = $(LIBUSB_LIBS)

library_includedir=$(includedir)/freenect-1.0/freenect
library_include_HEADERS = include/libfreenect.h

pkgconfigdir = $(libdir)/pkgconfig

bin_PROGRAMS = glview

glview_SOURCES = example/glview.c
glview_LDADD = $(GLUT_LIBS)  -lpthread -lfreenect

## Define an independent executable script for inclusion in the distribution
## archive. It will not be installed on an end user's system, however.
#dist_noinst_SCRIPTS = autogen.sh
