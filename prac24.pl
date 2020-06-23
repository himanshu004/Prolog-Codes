utter(X) :- sentence(X,[]).

sentence(A,C) :- nounPhrase(A,B),verbPhrase(B,C).
sentence(A,C) :- pronounPhase(A,B),verbPhrase(B,C).

nounPhrase(A,C) :- article(A,B),noun(B,C).
nounPhrase(A,B) :- noun(A,B).

verbPhrase(A,B) :- verb(A,B).
verbPhrase(A,C) :- verb(A,B),nounPhrase(B,C).
verbPhrase(A,C) :- verb(A,B),prepositionPhrase(B,C).

prepositionPhrase(A,C) :- preposition(A,B),nounPhrase(B,C).

pronounPhase(A,B) :- pronoun(A,B).

preposition([at|X],X).
preposition([under|X],X).
preposition([above|X],X).

pronoun([he|X],X).
pronoun([she|X],X).
pronoun([we|X],X).

article([a|X],X).
article([an|X],X).
article([the|X],X).

noun([cat|X],X).
noun([dog|X],X).
noun([table|X],X).

verb([barked|X],X).
verb([winked|X],X).
verb([is|X],X).
