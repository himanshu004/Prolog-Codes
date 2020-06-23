go :-   write('Enter the number:'),
        read(X1),
        factorial(X1,R),nl,
        write('The factorial is: '),write(R).


        factorial(0,1).
    
        factorial(N,X):- N1 is N - 1,
					factorial(N1,X1),
					X is X1 * N.

:-initialization(go).
