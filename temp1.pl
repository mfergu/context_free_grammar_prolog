/*http://cs.union.edu/~striegnk/learn-prolog-now/html/node61.html#subsec.l7.anbn*/

s1 --> d.
s1 --> d,s1.
d --> [a,c].

/*
s1(A,B) :-
	d(A,B).

s1(A,C) :-
	d(A,B),
	s1(B,C).

d([a,c|A],A).

st(A,C) :-
	d(A,B),
	st(B,C).

*/


/*
s2(A,C) :-
	a(A,B),
	c(B,C).

a([],[]) :- !.

a([a|A], B) :-
	a(A,B).

a([a|A], A).

c([], []) :- !.

c([c|A],B) :-
	c(A,B).

c([c|A], A).
*/

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

