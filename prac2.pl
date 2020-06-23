go :-   write('Enter the first number:'),
        read(X1),
        write('Enter the second number:'),
        read(X2),
        mymax(X1,X2,R),nl,
        write('The maximum is: '),write(R).


    mymax(X,Y,X):- X > Y,!.

	mymax(_,Y,Y).

:-initialization(go).