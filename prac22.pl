go:- write('Enter List(-1 to end)'),nl,
    createList(L),
    write('List: '),
    printList(L),nl,
    print('Enter the element to be deleted:'),nl,
    read(N),nl,
    delete_all(N,L,R),
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

delete_all(X, [], []).
delete_all(X, [H|T], Z):-  X = H, delete_all(X, T, Z), !.
delete_all(X, [H|T], [H|Z]):- X \= H, delete_all(X, T, Z).

:- initialization(go).
