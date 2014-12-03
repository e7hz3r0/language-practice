% Compile with: erl quicksort.erl
% Run with: erl -noshell -s quicksort test -s init stop

-module(quicksort).
-include_lib("eunit/include/eunit.hrl").
-export([quicksort/1]).

quicksort([]) -> [];
quicksort([I]) -> [I];
quicksort(Array) -> 
	Pivot_i = trunc(length(Array) / 2),
	Pivot = lists:nth(Pivot_i, Array),
	quicksort([Left || Left <- Array, Left < Pivot]) ++ [P || P <- Array, P == Pivot] ++ quicksort([Right || Right <- Array, Right > Pivot]).

%%
%% Tests
quicksort_test() -> 
	Arr = [10, 2, 1, 7, 9, 8, 0, 4, 6, 5, 3],
	[0,1,2,3,4,5,6,7,8,9,10] = quicksort(Arr).

quicksort_empty_test() -> [] = quicksort([]).
quicksort_single_test() -> [3] = quicksort([3]).
quicksort_ordered_test() -> 
	Arr = [0,1,2,3,4,5,6,7,8,9,10],
	[0,1,2,3,4,5,6,7,8,9,10] = quicksort(Arr).
