#ifndef LIB0_GLOBAL_H
#define LIB0_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(LIB0_LIBRARY)
#  define LIB0_EXPORT Q_DECL_EXPORT
#else
#  define LIB0_EXPORT Q_DECL_IMPORT
#endif

#endif // LIB0_GLOBAL_H
