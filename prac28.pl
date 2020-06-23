go:- write('Enter List(-1 to end)'),
    nl,
    createList(L),
    write('List: '),
    printList(L),nl,
    last_ele(L, R),
    write('The last element of the list is: '),
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

last_ele([H],H).
last_ele([_|T],R):- last_ele(T,R).

:- initialization(go).