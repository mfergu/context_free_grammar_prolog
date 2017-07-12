/*
/ Parser of context free grammar in chomsky normal form
/ implemented in SWI-Prolog
*/

s1 --> d.
s1 --> d,s1.
d --> [a,c].

s2 --> a,c.
a --> [a],a.
a --> [a].
c --> [c],c.
c --> [c].


s3 --> g,h.
g --> [c],g.
g --> [c].
h -->[a],h.
h --> [a].

none(X,_) :- 
	not( s1(X,[])),
	not( s2(X,[])),
	not( s3(X,[])).

ambig(X,_) :-
	s1(X,[]),
	s2(X,[]).
ambig(X,_) :-
	s2(X,[]),
	s3(X,[]).
ambig(X,_) :-
	s1(X,[]),
	s3(X,[]).

