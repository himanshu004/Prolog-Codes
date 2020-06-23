go:- write('Enter List(-1 to end)'),nl,
    createList(L),
    write('List: '),
    printList(L),nl,
    maxOfList(L, M),
    write('Maximum element of the list is: '),
    write(M), nl.

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

my_max(X, Y, M):- X > Y, M is X;
                    M is Y.
maxOfListHelper([], Current, Current).
maxOfListHelper([H|T], Previous, M):- my_max(H, Previous, Current), maxOfListHelper(T, Current, M).
maxOfList([H|T], M):- maxOfListHelper(T, H, M).

:- initialization(go).