go :-   write('Enter the first number:'),
        read(X1),
        write('Enter the second number:'),
        read(X2),
        gcd(X1,X2,R),nl,
        write('The GCD is: '),write(R).


    gcd(0,B,B).
    gcd(A,0,A).
    gcd(A,A,A).

    gcd(A,B,R):-  A > B,
                    N1 is A - B,
                    gcd(N1,B,R);
                    N1 is B - A,
                    gcd(A,N1,R).


:-initialization(go).
