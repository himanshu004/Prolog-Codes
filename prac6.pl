go :-   write('Enter the number:'),
        read(X1),
        write('Enter the exponent:'),
        read(X2),
        exp(X1,X2,R),nl,
        write('The answer is: '),write(R).


    exp(Num,1,Num).

    exp(Num,Pow,Ans):- Pow1 is Pow - 1,
						exp(Num,Pow1,Ans1),
						Ans is Ans1 * Num.


:-initialization(go).
