go :-   write('Enter the first number:'),
        read(X1),
        write('Enter the second number:'),
        read(X2),
        prod(X1,X2,R),nl,
        write('The product is: '),write(R).


    mult(X, 0, 0).
    mult(X, Y, R):- Y1 is Y - 1,
                    mult(X, Y1, R1),
                    R is R1 + X.
    prod(X, Y, R):- Y < 0,
                    Y1 is -1 * Y,
                    mult(X, Y1, R1),
                    R is -1 * R1;
                    mult(X, Y, R).

:-initialization(go).
