min_max_list([K|[]],K,K).
min_max_list([K|RL],Min,Max) :-
    min_max_list(RL,Min2,Max),
    Min2 > K,
    Min = K.
min_max_list([K|RL],Min,Max) :-
    min_max_list(RL,Min,Max2),
    Max2 < K,
    Max = K.

minmax_aufsteigend([K|[]],K,K).
minmax_aufsteigend([K|RL],Min,Max):-
    minmax_aufsteigend(RL,Min1,Max),
    K < Min1,
    Min = K.
minmax_aufsteigend([K|RL],Min,Max):-
    minmax_aufsteigend(RL,Min,Max1),
    K > Max1,
    Max = K.
minmax_aufsteigend([K|RL],Min,Max):-
    minmax_aufsteigend(RL,Min,Max),
    K =< Max,
    K >= Min.
