dnl Copyright (C) 2013 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl usage: DRUNTIME_CONFIGURE_THREADS([thread_model])

AC_DEFUN([DRUNTIME_CONFIGURE_THREADS],
[
case $1 in
    aix)    DCFG_THREAD_MODEL="Posix" ;;
    lynx)   DCFG_THREAD_MODEL="Posix" ;;
    posix)  DCFG_THREAD_MODEL="Posix" ;;
    single) DCFG_THREAD_MODEL="Single" ;;
    win32)  DCFG_THREAD_MODEL="Win32" ;;
    # TODO: These targets need porting.
    dce|mipssde|rtems|tpf|vxworks)
	    DCFG_THREAD_MODEL="Single" ;;
    *)	    as_fn_error "Thread implementation '$1' not recognised" "$LINENO" 5 ;;
esac
AC_SUBST(DCFG_THREAD_MODEL)
])

