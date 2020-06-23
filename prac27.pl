go :-   write('Enter the number:'),
        read(X1),
        sum_of_digits(X1,R),nl,
        write('The sum of digits of the number is: '),write(R).

        sum_of_digits(0,0). 
        sum_of_digits(A,R):- X is A mod 10,
                    A1 is A // 10,
                    sum_of_digits(A1,R2),
                    R is R2 + X.

:-initialization(go).
