

member(X,[X|_]).
member(X,[_|L]):-
    member(X, L).

num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).

ban(Board):-
    B0=[],
    num(N1), not(member(N1,B0)), append(B0,[N1],B1),
    num(N2), not(member(N2,B1)), append(B1,[N2],B2),
    num(N3), not(member(N3,B2)), append(B2,[N3],B3),
    num(N4), not(member(N4,B3)), append(B3,[N4],B4),
    num(N5), not(member(N5,B4)), append(B4,[N5],B5),
    num(N6), not(member(N6,B5)), append(B5,[N6],B6),
    num(N7), not(member(N7,B6)), append(B6,[N7],B7),
    num(N8), not(member(N8,B7)), append(B7,[N8],B8),
    num(N9), not(member(N9,B8)), append(B8,[N9],Board).

mahouzin(Board):-
    ban(Board),
    [N1,N2,N3,N4,N5,N6,N7,N8,N9]=Board,
    W1 is N1+N2+N3,
    W2 is N4+N5+N6, W2=W1,
    W3 is N7+N8+N9, W3=W2,
    H1 is N1+N4+N7, H1=W3,
    H2 is N2+N5+N8, H2=W3,
    H3 is N3+N6+N9, H3=H1,
    U is N7+N5+N3, U=H3,
    D is N1+N5+N9, D=U.
