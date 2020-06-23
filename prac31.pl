go:- write('Enter List(-1 to end)'),
    nl,
    createList(L),
    write('List: '),
    printList(L),nl,
    reverse_list(L, R),
    write('The reverse of the list is: '),
    printList(R), nl.

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
                
reverse_list(L,R):- reverse_list_helper(L,[],R).
reverse_list_helper([],A,A):- !.
reverse_list_helper([H|T],A1,A2):- reverse_list_helper(T, [H|A1], A2).

:- initialization(go).