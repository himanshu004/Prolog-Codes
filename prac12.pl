go :-   write('Enter the List(-1 to end)'),nl,
        createList(L),
        write('List: '),
        printList(L),nl,
        write('The reversed list is: '),
        my_reverse(L,RL),
        printList(RL).

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

        reverseHelper([], A, A):- !.
        reverseHelper([X|Y], R, A):- reverseHelper(Y, R, [X|A]).
        my_reverse(L, R):- reverseHelper(L, R, []).

:- initialization(go).
