go :-   write('Enter the number:'),
        read(X1),
        generate_fib(X1,R),nl,
        write('The n-th Fibonacci term is: '),write(R).


        generate_fib(0,0):- !.
        generate_fib(1,1):- !.
    
        generate_fib(N,X):- N1 is N - 1,
					generate_fib(N1,X1),
                    N2 is N - 2,
                    generate_fib(N2,X2),
					X is X1 + X2.

:-initialization(go).
