// file      : xml/details/config.hxx
// copyright : Copyright (c) 2013-2014 Code Synthesis Tools CC
// license   : MIT; see accompanying LICENSE file

#ifndef XML_DETAILS_CONFIG_HXX
#define XML_DETAILS_CONFIG_HXX

// Note: the same in expat/config.h
//
#ifdef LIBSTUDXML_BUILD2
#  ifdef _MSC_VER
#    include <xml/details/build2/config-vc.h>
#  else
#    include <xml/details/build2/config.h>
#  endif
#else
#  ifdef _MSC_VER
#    include <xml/details/config-vc.h>
#  else
#    include <xml/details/config.h>
#  endif
#endif

#endif // XML_DETAILS_CONFIG_HXX
