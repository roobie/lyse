-module(recursive).
-export([fac/1, fib/1, len/1, duplicate/2, reverse/1]).

fac(0) -> 1;
fac(N) when N > 0 ->
    N * fac(N-1).

len([]) -> 0;
len(L) ->
    tail_tco(0, L).

tail_tco(Acc, []) ->
    Acc;
tail_tco(Acc, [_|Tail]) ->
    tail_tco(Acc + 1, Tail).


fib(N) -> fib_tco(0, N).

fib_tco(Acc, 1) -> Acc + 1;
fib_tco(_, N) when N < 1 -> 0;
fib_tco(Acc, N) when N > 1 ->
    fib_tco(Acc, N-2) + fib_tco(Acc, N-1).

duplicate(Count, What) -> duplicate_tco([], Count, What).

duplicate_tco(Acc, 0, _What) -> Acc;
duplicate_tco(Acc, N, What) when N > 0 ->
    duplicate_tco([What|Acc], N - 1, What).



reverse(L) -> reverse_tco([], L).

reverse_tco(Acc, []) ->
    Acc;
reverse_tco(Acc, [Head|Tail]) ->
    reverse_tco([Head|Acc], Tail).
