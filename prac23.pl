go:- write('Enter first sorted list(-1 to end)'),nl,
    createList(L1),
    write('List: '),
    printList(L1),nl,
    write('Enter the second sorted list'),nl,
    createList(L2),nl,
    printList(L2),nl,
    write('The new merged list is: '),
    merge(L1,L2,R),nl,
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

merge([],L2,L2).
merge(L1,[],L1).
merge([H1|T1],[H2|T2],[H1|Z]):- H1 =< H2,merge(T1,[H2|T2],Z),!.
merge([H1|T1],[H2|T2],[H2|Z]):- H1 > H2,merge([H1|T1],T2,Z).

:- initialization(go).

