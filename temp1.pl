/*
terminal(a).
terminal(c).
*/
head_term(a).
tail_term(c).
head([X|Y]) :- head_term(X), head(Y).
head([X]) :- head_term(X).
tail([X|Y]) :- tail_term(X), tail(Y).
tail([X]) :- tail_term(Y).
sentence([X|Y]) :- head(X).
sentence([X|Y]) :- tail(X).
sentence([X|Y]) :- head(X), tail(Y).
/*
r1([A,B]) :- head_term(A), tail_term(B).
head([X|_]) :- head_term(X).
sentence([X,Y]) :- head_term(X) , tail_term(Y).
sentence([X,Y]) :- head_term(X) , tail(Y).
sentence([X,Y]) :- head(X) , tail_term(Y).
*/
