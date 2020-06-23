go:- write('Enter the Tree : '), 
    read(T), nl, 
	write('The Pre-order traversal is  : '),
	preorder(T,R1), write(R1),nl,
    write('The In-order traversal is  : '),
	inorder(T,R2), write(R2),nl,
    write('The Post-order traversal is  : '),
	postorder(T,R3), write(R3),nl.
	

preorder(nil,[]):-!.
preorder(tr(nil,X,nil),[X]):-!.
preorder(tr(LEFT,R,RIGHT),L):- 
                 preorder(LEFT,LT), preorder(RIGHT,RT),
				 append([R],LT,Temp),
				 append(Temp,RT,L),!.

inorder(nil,[]):-!.
inorder(tr(nil,X,nil),[X]):-!.
inorder(tr(LEFT,R,RIGHT),L):-	
                inorder(LEFT,LT), inorder(RIGHT,RT),
				append(LT,[R],Temp),
				append(Temp,RT,L),!.

postorder(nil,[]):-!.
postorder(tr(nil,X,nil),[X]):-!.
postorder(tr(LEFT,R,RIGHT),L):- 
                 postorder(LEFT,LT), postorder(RIGHT,RT),
				 append(LT,RT,Temp),
				 append(Temp,[R],L),!.

:- initialization(go).