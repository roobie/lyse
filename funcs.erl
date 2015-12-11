-module(funcs).
-export([map/2]).


map(F, L) ->
    map_tco([], F, L).

map_tco(Acc, _F, []) ->
    Acc;
map_tco(Acc, F, [H|T]) ->
    map_tco(Acc ++ [F(H)], F, T).
