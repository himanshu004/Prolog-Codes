go :-   write('Enter the List(-1 to end)'),nl,
        createList(L),
        write('List you entered is: '),
        printList(L),nl,
        write('Sum of the list is : '),
        list_sum(L,R),
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
            
        list_sum([],0):- !.
        list_sum([H|T],R):- list_sum(T,X),
                            R is H + X.  

:-initialization(go).