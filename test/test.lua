#!/usr/local/bin/lua

--[[
 * gzip file I/O library test script
 *
 * This file was created by Judge Maygarden (jmaygarden at computer dot org)
 * and is hereby place in the public domain
 ]]

require "gzio"

local filename = "test.txt"
local file

-- stream the text file into a gzip file
file = assert(gzio.open(filename..".gz", "w"))
for line in io.lines(filename) do
	file:write(line..'\n')
end
file:close()

-- echo the gzip file to stdout
file = assert(gzio.open(filename, "r"), "gzio.open failed!")
for line in file:lines() do
	print(line)
end
file:close()

-- The following functions also need to be tested

--file:flush
--file:read
--file:seek
--file:setvbuf

--gzio.close
--gzio.flush
--gzio.input
--gzio.lines
--gzio.output
--gzio.popen
--gzio.read
--gzio.stderr
--gzio.stdin
--gzio.stdout
--gzio.tmpfile
--gzio.type
--gzio.write

