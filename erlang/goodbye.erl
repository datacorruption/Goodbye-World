-module(goodbye).
-export([start/0]).
start() -> io:fwrite("Goodbye World\n").
