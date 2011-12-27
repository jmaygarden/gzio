/*
 * gzio - Lua gzip file I/O module
 *
 * Author: Judge Maygarden
 * Copyright (c) 2007 Judge Maygarden
 *
 */

#ifndef LGZIOLIB_H
#define LGZIOLIB_H

#include "lua.h"

#ifndef GZIO_API
#define GZIO_API	LUA_API
#endif /* GZIO_API */

/*
 * The macros "lua_popen" and "lua_pclose" are defined in luaconf.h. In JIT
 * version "lua_open" and "lua_close" do not exists.
 */
#ifndef lua_popen
#   define lua_popen(L, c, m)   ((void)(L), _popen((c),(m)))
#   define lua_pclose(L, file)  ((void)(L), (_pclose((file)) != -1))
#endif

#define LUA_GZIOLIBNAME   "gzio"
GZIO_API int luaopen_gzio (lua_State *L);

#endif /* LGZIOLIB_H */

