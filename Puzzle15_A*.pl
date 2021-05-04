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

diferente(A, B, Res, ResFinal) :-
    not(=(A,  B)), !,
    ResFinal is Res + 1.
diferente(A, A, Res, Res).

h_fora_do_lugar([[A, B, C, D], [E, F, G, H], [I, J, K, L], [M, N, O, _]], Res) :-
    diferente(A, 1, 0, Res2),
    diferente(B, 2, Res2, Res3),
    diferente(C, 3, Res3, Res4),
    diferente(D, 4, Res4, Res5),
    diferente(E, 5, Res5, Res6),
    diferente(F, 6, Res6, Res7),
    diferente(G, 7, Res7, Res8),
    diferente(H, 8, Res8, Res9),
    diferente(I, 9, Res9, Res10),
    diferente(J, 10, Res10, Res11),
    diferente(K, 11, Res11, Res12),
    diferente(L, 12, Res12, Res13),
    diferente(M, 13, Res13, Res14),
    diferente(N, 14, Res14, Res15),
    diferente(O, 15, Res15, Res).

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
    dist_man((1,1), A, Dist_A),
    dist_man((1,2), B, Dist_B),
    dist_man((1,3), C, Dist_C),
    dist_man((1,4), D, Dist_D),
    dist_man((2,1), E, Dist_E),
    dist_man((2,2), F, Dist_F),
    dist_man((2,3), G, Dist_G),
    dist_man((2,4), H, Dist_H),
    dist_man((3,1), I, Dist_I),
    dist_man((3,2), J, Dist_J),
    dist_man((3,3), K, Dist_K),
    dist_man((3,4), L, Dist_L),
    dist_man((4,1), M, Dist_M),
    dist_man((4,2), N, Dist_N),
    dist_man((4,3), O, Dist_O),
    dist_man((4,4), P, Dist_P),
    Res is Dist_A + Dist_B + Dist_C + Dist_D + Dist_E + Dist_F + Dist_G + Dist_H + Dist_I + Dist_J + Dist_K + Dist_L + Dist_M + Dist_N + Dist_O + Dist_P.

gerar_vizinho_com_custo([], _, []).
gerar_vizinho_com_custo([H | T], C, [[H, R]| T1]) :-
    R is C + 1,
    gerar_vizinho_com_custo(T, C, T1).

vizinho([N, C], FilhosN) :- 
    findall(Y, acao(N, _, Y), FN),
    gerar_vizinho_com_custo(FN, C, FilhosN).

diffLists([], _, []) :- !.
diffLists([[N1, F1] | T1], RL, [[N1, F1] | T]) :- not(member([N1, _], RL)), !, diffLists(T1, RL, T).
diffLists([[N1, _] | T1], RL, L) :- member([N1, _], RL), !, diffLists(T1, RL, L).

mais_barato([N1, Custo1], [N2, Custo2]) :-
    h_man(N1, H1),
    h_man(N2, H2),
    Custo1 + H1 < Custo2 + H2.

ordenar(Nodo, [], [Nodo]).
ordenar(Nodo,[H|T],[Nodo, H|T]) :- mais_barato(Nodo, H), !.
ordenar(Nodo,[Nodo1|R],[Nodo1|S]) :- ordenar(Nodo,R,S), !.

adicionar_a_fronteira([], F3, F3).    
adicionar_a_fronteira([H | T], F1, F3) :-
    ordenar(H, F1, F2), 
    adicionar_a_fronteira(T, F2, F3), !.

encontrar_pai(Nodo, [H | _], PaiNodo) :-
    H = (Nodo, PaiNodo), !.
encontrar_pai(Nodo, [H | T], PaiNodo) :-
    not(=(H, (Nodo, PaiNodo))),
    encontrar_pai(Nodo, T, PaiNodo).

gerar_caminho(Nodo, Pais, Caminho) :-
    not(encontrar_pai(Nodo, Pais, _)),
    escrever_lista(Caminho).
gerar_caminho(Nodo, Pais, Caminho) :-  
    encontrar_pai(Nodo, Pais, PaiNodo),
    acao(PaiNodo, Acao, Nodo),
    append([Acao], Caminho, Caminho2),
    gerar_caminho(PaiNodo, Pais, Caminho2), !.

escrever_lista([]).
escrever_lista([H | T]) :-
    write(H), nl,
    escrever_lista(T).

adicionar_pais(_, [], Pais, Pais).
adicionar_pais([Nodo, Custo], [[H, _] | T], Pais, Pais3) :-
    append([(H, Nodo)], Pais, Pais2),
    adicionar_pais([Nodo, Custo], T, Pais2, Pais3).

buscar_a_estrela([[Nodo, _] | _], _, Pais, N) :- 
    objetivo(Nodo),
    gerar_caminho(Nodo, Pais, []),
    write('Foram gerados '), write(N), write(' Nó(s)').

buscar_a_estrela([Nodo | F1], Visitados, Pais, N) :-
    N2 is N + 1,
    append([Nodo], Visitados, Visitados2),
    vizinho(Nodo, V),
    diffLists(V, Visitados2, V2),
    adicionar_pais(Nodo, V2, Pais, Pais2),
    adicionar_a_fronteira(V2, F1, F2),
    append(F2, Visitados2, Visitados3),
    buscar_a_estrela(F2, Visitados3, Pais2, N2), !.

busca_a_estrela(Nodo) :- buscar_a_estrela([[Nodo, 0] | _], [], [], 0).
