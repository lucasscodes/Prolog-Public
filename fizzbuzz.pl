fizzbuzz(N,fizzbuzz) :- N mod 3 =:= 0, N mod 5 =:= 0.
fizzbuzz(N,fizz) :- N mod 3 =:= 0, N mod 5 =\= 0.
fizzbuzz(N,buzz) :- N mod 3 =\= 0, N mod 5 =:= 0.
fizzbuzz(N,N) :- N mod 3 =\= 0, N mod 5 =\= 0.

/**
 *Run following in terminal, after loading this file!
 *
 *numlist(1,100,Numlist),
 *maplist(fizzbuzz,Numlist,FBList),
 *maplist(writeln,FBList).
 */