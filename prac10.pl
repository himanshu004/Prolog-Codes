go :-   write('Enter the List(-1 to end)'),nl,
        createList(L),
        write('List: '),
        printList(L),nl,
        write('Enter the element to be searched for:'),
        read(X),
        is_member(X,L),write('Yes,it is a member');
        write('Not a member').

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

        is_member(H,[H|_]):- !.
        is_member(H,[_|T]):- is_member(H,T).

:-initialization(go).           