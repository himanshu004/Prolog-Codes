delete_first(X,[X|T],T).
delete_first(X,[Y|T1],[Y|T2]) :- X \= Y,
        delete_first(X,T1,T2).

towerOfHanoi(1, R1, R2, R3):- write('Move disk 1 from rod '),
                            write(R1),
                            write(' to rod '),
                            write(R2), nl.
towerOfHanoi(N, R1, R2, R3):-
                    K is N - 1,
                    towerOfHanoi(K, R1, R3, R2),
                    write('Move disk '),
                    write(N),
                    write(' from rod '),
                    write(R1),
                    write(' to rod '),
                    write(R2), nl,
                    towerOfHanoi(K, R3, R2, R1).

last_element([H],H).
last_element([_|T],R):- last_element(T,R).

inorder(nil,[]):-!.
inorder(tr(nil,X,nil),[X]):-!.
inorder(tr(LEFT,R,RIGHT),L):-	
                inorder(LEFT,LT), inorder(RIGHT,RT),
				append(LT,[R],Temp),
				append(Temp,RT,L),!.

enterElement(X):- write('Enter element: '),
                  read(X).

createList(L):- write('Enter the List(-1 to end)'),nl,
                enterElement(X),
                createListHelper(X, L),nl,
                write('The list you entered is: '),
                printList(L),nl.


createListHelper(-1, []):- !.
        
createListHelper(X, [X|Y]):- enterElement(X1),
                             createListHelper(X1, Y).

printList([]):- !.
printList([X|Y]):-  write(X),
                    write(' '),
                    printList(Y).              

question(1):- createList(L),
            write('Enter the element to be deleted '),nl,
            read(X),
            delete_first(X,L,R),
            write('List after removing first occurence of the element is: '),
            printList(R), nl.

question(2):- write('Enter the number of discs(n): '),
            read(N),
            towerOfHanoi(N,a,c,b).

question(3):- createList(L),
            last_element(L, R),
            write('The last element of the list is: '),
            write(R), nl.

question(4):- write('Enter the Tree : '), 
            read(T), nl,
            write('The Inorder traversal of the tree is  : '),
	        inorder(T,R2), 
            write(R2),nl.

question(_):- write('Invalid choice!'), nl.


go:- write('********** M E N U ***********'), nl, nl,
     write('1.Delete first occurence of the given number'), nl,
     write('2.Tower Of Hanoi'), nl,
     write('3.Print last element of the list'), nl,
     write('4.Inorder Traversal of Tree'), nl,
     write('Enter your choice: '), nl,
     read(N),
     question(N).

:-initialization(go).