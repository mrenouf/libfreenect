#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_INIT([libfreenect],[1.0])
AC_PREREQ([2.67])
AM_INIT_AUTOMAKE
AC_CONFIG_MACRO_DIR([m4])

AC_CONFIG_SRCDIR([src/usb_libusb10.c])
AC_CONFIG_SRCDIR([examples/glview.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile libfreenect.pc])

LT_INIT

# Checks for programs.
AC_PROG_CC
AM_PROG_CC_C_O

PKG_CHECK_MODULES([LIBUSB], [libusb-1.0 >= 1.0.8])

# Get GLUT library and include locations
AC_ARG_WITH([glut-include-path],
  [AS_HELP_STRING([--with-glut-include-path],
    [location of the GLUT headers, defaults to /usr/include/GL])],
  [GLUT_CFLAGS="-I$withval"],
  [GLUT_CFLAGS='-I/usr/include/GL'])
AC_SUBST([GLUT_CFLAGS])

AC_ARG_WITH([glut-lib-path],
  [AS_HELP_STRING([--with-glut-lib-path], [location of the GLUT libraries])],
  [GLUT_LIBS="-L$withval -lglut"],
  [GLUT_LIBS='-lglut'])
AC_SUBST([GLUT_LIBS])

# Checks for header files.
AC_CHECK_HEADERS([stdint.h stdlib.h string.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_TYPE_INT16_T
AC_TYPE_SSIZE_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([memset])

AC_OUTPUT
