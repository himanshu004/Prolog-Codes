go:- write('Enter List(-1 to end)'),nl,
    createList(L),
    write('List: '),
    printList(L),nl,
    write('Enter the value of n:'),nl,
    read(N),nl,
    write('Enter the element to be inserted:'),nl,
    read(I),
    insert_nth(I,N,L,R),
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

conc([], L2, L2).
conc([H|T1], L2, [H|T2]):- conc(T1, L2, T2).

insert_nth(I, 1, L, R):- conc([I], L, R), !.
insert_nth(I, N, [H|T1], [H|T2]):- N1 is N - 1,
                                 insert_nth(I, N1, T1, T2).

:- initialization(go).