go:- write('Enter List(-1 to end)'),
    nl,
    createList(L),
    write('List: '),
    printList(L),nl,
    list_length(L, R),
    write('The length of the list is: '),
    write(R), nl.

enterElement(X):- write('Enter element: '),
                  read(X).

createList(L):- enterElement(X),
                createListHelper(X, L).
createListHelper(-1, []):- !.
createListHelper(X, [X|Y]):- enterElement(X1),
                       createListHelper(X1, Y).

printList([]).
printList([X|Y]):-  write(X),
                    write(' '),
                    printList(Y).

list_length(X,L) :- list_length_helper(X,0,L) .

list_length_helper([],L,L) .
list_length_helper([_|X],T,L) :- T1 is T + 1,
                                list_length_helper(X,T1,L).

:- initialization(go).