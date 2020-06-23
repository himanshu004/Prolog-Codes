go:- write('Enter List(-1 to end)'),nl,
    createList(L),
    write('List: '),
    printList(L),nl,
    print('Enter the value of n: '),nl,
    read(N),nl,
    delete_nth(N,L,R),
    write('The new list is: '),
    printList(R), nl.

enterElement(X):- write('Enter the new element: '),
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

delete_nth(1,[H|T],T):- !.
delete_nth(N,[X|Y],[X|Z]):- N1 is N - 1,
                            delete_nth(N1,Y,Z).

:- initialization(go).
