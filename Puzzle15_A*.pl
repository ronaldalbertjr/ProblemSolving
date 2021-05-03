objetivo([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, -1]]).

%Movimentos possíveis para a primeira casa.
acao([[A, -1, B, C], [D, E, F, G], [H, I, J, K], [L, M, N, O]], 
     direita11, 
     [[-1, A, B, C], [D, E, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[A, B, C, D], [-1, E, F, G], [H, I, J, K], [L, M, N, O]], 
     baixo11, 
     [[-1, B, C, D], [A, E, F, G], [H, I, J, K], [L, M, N, O]]).

%Movimentos possíveis para a segunda casa.
acao([[-1, A, B, C], [D, E, F, G], [H, I, J, K], [L, M, N, O]], 
     esquerda12, 
     [[A, -1, B, C], [D, E, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, A, -1, C], [D, E, F, G], [H, I, J, K], [L, M, N, O]], 
     direita12, 
     [[B, -1, A, C], [D, E, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, A, C, D], [E, -1, F, G], [H, I, J, K], [L, M, N, O]], 
     baixo12, 
     [[B, -1, C, D], [E, A, F, G], [H, I, J, K], [L, M, N, O]]).

%Movimentos possíveis para a terceira casa.
acao([[B, -1, A, C], [D, E, F, G], [H, I, J, K], [L, M, N, O]], 
     esquerda13, 
     [[B, A, -1, C], [D, E, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, A, -1], [D, E, F, G], [H, I, J, K], [L, M, N, O]], 
     direita13, 
     [[B, C, -1, A], [D, E, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, A, D], [E, F, -1, G], [H, I, J, K], [L, M, N, O]], 
     baixo13, 
     [[B, C, -1, D], [E, F, A, G], [H, I, J, K], [L, M, N, O]]).

%Movimentos possíveis para a quarta casa.
acao([[B, C, -1, A], [D, E, F, G], [H, I, J, K], [L, M, N, O]], 
     esquerda14, 
     [[B, C, A, -1], [D, E, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, D, A], [E, F, G, -1], [H, I, J, K], [L, M, N, O]], 
     baixo14, 
     [[B, C, D, -1], [E, F, G, A], [H, I, J, K], [L, M, N, O]]).

%Movimentos possíveis para a quinta casa.
acao([[B, C, D, E], [A, -1, F, G], [H, I, J, K], [L, M, N, O]], 
     direita21, 
     [[B, C, D, E], [-1, A, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[-1, B, C, D], [A, E, F, G], [H, I, J, K], [L, M, N, O]], 
     cima21, 
     [[A, B, C, D], [-1, E, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [A, F, G, H], [-1, I, J, K], [L, M, N, O]], 
     baixo21, 
     [[B, C, D, E], [-1, F, G, H], [A, I, J, K], [L, M, N, O]]).

%Movimentos possíveis para a sexta casa.
acao([[B, C, D, E], [F, A, -1, G], [H, I, J, K], [L, M, N, O]], 
     direita22, 
     [[B, C, D, E], [F, -1, A, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [-1, A, F, G], [H, I, J, K], [L, M, N, O]], 
     esquerda22, 
     [[B, C, D, E], [A, -1, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, -1, C, D], [E, A, F, G], [H, I, J, K], [L, M, N, O]], 
     cima22, 
     [[B, A, C, D], [E, -1, F, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, A, G, H], [I, -1, J, K], [L, M, N, O]], 
     baixo22, 
     [[B, C, D, E], [F, -1, G, H], [I, A, J, K], [L, M, N, O]]).

%Movimentos possíveis para a setima casa.
acao([[B, C, D, E], [F, G, A, -1], [H,I, J, K], [L, M, N, O]], 
     direita23, 
     [[B, C, D, E], [F, G, -1, A], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, -1, A, G], [H, I, J, K], [L, M, N, O]], 
     esquerda23, 
     [[B, C, D, E], [F, -1, A, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, -1, D], [E, F, A, G], [H, I, J, K], [L, M, N, O]], 
     cima23, 
     [[B, C, A, D], [E, F, -1, G], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, A, H], [I, J, -1, K], [L, M, N, O]], 
     baixo23, 
     [[B, C, D, E], [F, G, -1, H], [I, J, A, K], [L, M, N, O]]).

%Movimentos possíveis para a oitava casa.
acao([[B, C, D, E], [F, G, -1, A], [H, I, J, K], [L, M, N, O]], 
     esquerda24, 
     [[B, C, D, E], [F, G, A, -1], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, D, -1], [E, F, G, A], [H, I, J, K], [L, M, N, O]], 
     cima24, 
     [[B, C, D, A], [E, F, G, -1], [H, I, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, H, A], [I, J, K, -1], [L, M, N, O]], 
     baixo24, 
     [[B, C, D, E], [F, G, H, -1], [I, J, K, A], [L, M, N, O]]).

%Movimentos possíveis para a nona casa.
acao([[B, C, D, E], [F, G, H, I], [A, -1, J, K], [L, M, N, O]], 
     direita31, 
     [[B, C, D, E], [F, G, H, I], [-1, A, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [-1, F, G, H], [A, I, J, K], [L, M, N, O]], 
     cima31, 
     [[B, C, D, E], [A, F, G, H], [-1, I, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, H, I], [A, J, K, L], [-1, M, N, O]], 
     baixo31, 
     [[B, C, D, E], [F, G, H, I], [-1, J, K, L], [A, M, N, O]]).

%Movimentos possíveis para a decima casa.
acao([[B, C, D, E], [F, G, H, I], [-1, A, J, K], [L, M, N, O]], 
     esquerda32, 
     [[B, C, D, E], [F, G, H, I], [A, -1, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, H, I], [J, A, -1, K], [L, M, N, O]], 
     direita32, 
     [[B, C, D, E], [F, G, H, I], [J, -1, A, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, -1, G, H], [I, A, J, K], [L, M, N, O]], 
     cima32, 
     [[B, C, D, E], [F, A, G, H], [I, -1, J, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, H, I], [J, A, K, L], [M, -1, N, O]], 
     baixo32, 
     [[B, C, D, E], [F, G, H, I], [J, -1, K, L], [M, A, N, O]]).

%Movimentos possíveis para a decima primeira casa.
acao([[B, C, D, E], [F, G, H, I], [J, -1, A, K], [L, M, N, O]], 
     esquerda33, 
     [[B, C, D, E], [F, G, H, I], [J, A, -1, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, H, I], [J, K, A, -1], [L, M, N, O]], 
     direita33, 
     [[B, C, D, E], [F, G, H, I], [J, K, -1, A], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, -1, H], [I, J, A, K], [L, M, N, O]], 
     cima33, 
     [[B, C, D, E], [F, G, A, H], [I, J, -1, K], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, H, I], [J, K, A, L], [M, N, -1, O]], 
     baixo33, 
     [[B, C, D, E], [F, G, H, I], [J, K, -1, L], [M, N, A, O]]).

%Movimentos possíveis para a decima segunda casa.
acao([[B, C, D, E], [F, G, H, I], [J, K, -1, A], [L, M, N, O]], 
     esquerda34, 
     [[B, C, D, E], [F, G, H, I], [J, K, A, -1], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, H, -1], [I, J, K, A], [L, M, N, O]], 
     cima34, 
     [[B, C, D, E], [F, G, H, A], [I, J, -K, -1], [L, M, N, O]]).
acao([[B, C, D, E], [F, G, H, I], [J, K, L, A], [M, N, O, -1]], 
     baixo34, 
     [[B, C, D, E], [F, G, H, I], [J, K, L, -1], [M, N, O, A]]).

%Movimentos possíveis para a decima terceira casa.
acao([[B, C, D, E], [F, G, H, I], [J, K, L, M], [A, -1, N, O]], 
     direita41, 
     [[B, C, D, E], [F, G, H, I], [J, K, L, M], [-1, A, N, O]]).
acao([[B, C, D, E], [F, G, H, I], [-1, J, K, L], [A, M, N, O]], 
     cima41, 
     [[B, C, D, E], [F, G, H, I], [A, J, K, L], [-1, M, N, O]]).

%Movimentos possíveis para a decima quarta casa.
acao([[B, C, D, E], [F, G, H, I], [J, K, L, M], [-1, A, N, O]], 
     esquerda42, 
     [[B, C, D, E], [F, G, H, I], [J, K, L, M], [A, -1, N, O]]).
acao([[B, C, D, E], [F, G, H, I], [J, K, L, M], [N, A, -1, O]], 
     direita42, 
     [[B, C, D, E], [F, G, H, I], [J, K, L, M], [N, -1, A, O]]).
acao([[B, C, D, E], [F, G, H, I], [J, -1, K, L], [M, A, N, O]], 
     cima42, 
     [[B, C, D, E], [F, G, H, I], [J, A, K, L], [M, -1, N, O]]).

%Movimentos possíveis para a decima quinta casa.
acao([[B, C, D, E], [F, G, H, I], [J, K, L, M], [N, -1, A, O]], 
     esquerda43, 
     [[B, C, D, E], [F, G, H, I], [J, K, L, M], [N, A, -1, O]]).
acao([[B, C, D, E], [F, G, H, I], [J, K, L, M], [N, O, A, -1]], 
     direita43, 
     [[B, C, D, E], [F, G, H, I], [J, K, L, M], [N, O, -1, A]]).
acao([[B, C, D, E], [F, G, H, I], [J, K, -1, L], [M, N, A, O]], 
     cima43, 
     [[B, C, D, E], [F, G, H, I], [J, K, A, L], [M, N, -1, O]]).

%Movimentos possíveis para a decima sexta casa.
acao([[B, C, D, E], [F, G, H, I], [J, K, L, M], [N, O, -1, A]], 
     esquerda44, 
     [[B, C, D, E], [F, G, H, I], [J, K, L, M], [N, O, A, -1]]).
acao([[B, C, D, E], [F, G, H, I], [J, K, L, -1], [M, N, O, A]], 
     cima44, 
     [[B, C, D, E], [F, G, H, I], [J, K, L, A], [M, N, O, -1]]).

final_pos(1, (1,1)).
final_pos(2, (1,2)).
final_pos(3, (1,3)).
final_pos(4, (1,4)).
final_pos(5, (2,1)).
final_pos(6, (2,2)).
final_pos(7, (2,3)).
final_pos(8, (2,4)).
final_pos(9, (3,1)).
final_pos(10, (3,2)).
final_pos(11, (3,3)).
final_pos(12, (3,4)).
final_pos(13, (4,1)).
final_pos(14, (4,2)).
final_pos(15, (4,3)).
final_pos(-1, (4,4)).    

dist_man((X,Y), A, Dist) :-
    final_pos(A, (Xf,Yf)),
    abs(X-Xf, Dist_x),
    abs(Y-Yf, Dist_y),
    Dist is Dist_x + Dist_y.

h_man([[A, B, C, D], [E, F, G, H], [I, J, K, L], [M, N, O, P]], Res) :-
    dist_man((1,1),A,Dist_A),
    dist_man((1,2),B,Dist_B),
    dist_man((1,3),C,Dist_C),
    dist_man((1,4),D,Dist_D),
    dist_man((2,1),E,Dist_E),
    dist_man((2,2),F,Dist_F),
    dist_man((2,3),G,Dist_G),
    dist_man((2,4),H,Dist_H),
    dist_man((3,1),I,Dist_I),
    dist_man((3,2),J,Dist_J),
    dist_man((3,3),K,Dist_K),
    dist_man((3,4),L,Dist_L),
    dist_man((4,1),M,Dist_M),
    dist_man((4,2),N,Dist_N),
    dist_man((4,3),O,Dist_O),
    dist_man((4,4),P,Dist_P),
    Res is Dist_A + Dist_B + Dist_C + Dist_D + Dist_E + Dist_F + Dist_G + Dist_H + Dist_I + Dist_J + Dist_K + Dist_L + Dist_M + Dist_N + Dist_O + Dist_P.
    
vizinho(N, FilhosN) :- 
    findall(Y,acao(N, _, Y),FilhosN).

diffLists([], _, []) :- !.
diffLists([H1 | T1], RL, [H1 | T]) :- not(member(H1, RL)), !, diffLists(T1, RL, T).
diffLists([H1 | T1], RL, L) :- member(H1, RL), !, diffLists(T1, RL, L).



adicionar_a_fronteira(V, F1, F3) :-
    append(F1, V, F2),
    sort_na_heuristica(F2, F3).

buscar_em_largura([Nodo | _], _, _) :- 
    objetivo(Nodo),
    write(Nodo).
buscar_em_largura([Nodo | F1], Visitados, Estados) :- 
    %write(Nodo),
    %nl,
    append([Nodo], Visitados, Visitados2),
    append([Nodo], Estados, Estados2),
    vizinho(Nodo, V),
    diffLists(V, Visitados2, V2),
    adicionar_a_fronteira(V2, F1, F2),
    append(F2, Visitados2, Visitados3),
    buscar_em_largura(F2, Visitados3, Estados2), !.

busca_em_largura(Nodo) :- buscar_em_largura([Nodo | _], [], []).
    
    
