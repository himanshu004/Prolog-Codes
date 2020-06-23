conc([], L2, L2).
conc([X|Y], L2, [X|Z]):- conc(Y, L2, Z).

my_permutation([], []).
my_permutation(L, [H|T]):- conc(V, [H|U], L),
                            conc(V, U, W),
                            my_permutation(W, T).