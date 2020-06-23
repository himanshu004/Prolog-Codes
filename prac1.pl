go :-   write('Enter the first number:'),
        read(X1),
        write('Enter the second number:'),
        read(X2),
        sum(X1,X2,R),nl,
        write('The sum is: '),write(R).


        sum(A,B,R):-R is A + B.

:-initialization(go).
