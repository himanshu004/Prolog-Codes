go:- write('Enter List(-1 to specify end)'),
    nl,
    createList(L),
    write('List: '),
    printList(L),
    nl,
    write('Enter N:'),nl,
    read(N),
    write('The element is:'),
    nth_element(L,N,R),nl,
    write(R).

    enterElement(X):- write('Enter element: '),
                  read(X).

createList(L):- enterElement(X),
                createListHelper(X, L).
createListHelper(-1, []):- !.
createListHelper(X, [X|Y]):- enterElement(X1),
                       createListHelper(X1, Y).

printList([]):- !.
printList([X|Y]):-  write(X),
                    write(' '),
                    printList(Y).

        nth_element([H|T],1,H):- !.

        nth_element([H|T],N,R):- N1 is N - 1,
                                nth_element(T,N1,R).
            
:- initialization(go).
