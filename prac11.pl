go :-   write('Enter the first List(-1 to end)'),nl,
        createList(X1),
        write('List one: '),
        printList(X1),nl,
        write('Enter the second List(-1 to end)'),nl,
        createList(X2),
        write('List two: '),
        printList(X2),nl,
        conc(X1,X2,X3),nl,
        write('The new list is: '),
        printList(X3).

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

        conc([],L2,L2).
        conc([H|T1],L2,[H|T2]):- conc(T1,L2,T2).

:-initialization(go).