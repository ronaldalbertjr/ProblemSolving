%Trabalho desenvolvido por Ronald Albert 118021192 e Lucas Rufino 118046647
%Resposta da letra (a)
objetivo((2, 0)).
objetivo((2, 1)).
objetivo((2, 2)).
objetivo((2, 3)).

%Resposta da letra (b)
acao((J1, J2), encher1, (4, J2)) :- J1 < 4.
acao((J1, J2), encher2, (J1, 3)) :- J2 < 3.
acao((J1, J2), esvaziar1, (0, J2)) :- J1 > 0.
acao((J1, J2), esvaziar2, (J1, 0)) :- J2 > 0.
acao((J1, J2), passar1, (J3, J4)) :- 
    J3 is -(J1, -(3, J2)), 
    J4 is +(J2, -(3, J2)), 
    J1 >= -(3, J2), 
    J2 < 3,
    J1 > 0.
acao((J1, J2), passar1, (0, E)) :- 
    E is +(J2, J1), 
    J1 < -(3, J2),
    J1 > 0.
acao((J1, J2), passar2, (J3, J4)) :- 
    J3 is +(J1, -(4, J1)), 
    J4 is -(J2, -(4, J1)), 
    J2 >= -(4, J1), 
    J1 < 4,
    J2 > 0.
acao((J1, J2), passar2, (E, 0)) :- 
    E is +(J1, J2), 
    J2 < -(4, J1),
    J2 > 0.

%Resposta da letra (c)
vizinho(N, FilhosN) :- 
    findall(Y,acao(N, _, Y),FilhosN).


%Resposta da letra (d)
adicionar_a_fronteira_em_largura(V, F1, F2) :- append(F1, V, F2).
%busca_em_largura([Nodo | _ ]) :- 
%    objetivo(Nodo),
%    write(Nodo).
%busca_em_largura([Nodo | F1]) :- 
%    vizinho(Nodo, NN),
%	adicionar_a_fronteira_em_largura(NN, F1, F2),
%    write(Nodo), nl,
%	busca_em_largura(F2).

%Resposta da letra (e)
%busca_em_largura([Nodo | _ ], Estados) :- 
%    objetivo(Nodo),
%    append([Nodo], Estados, EstadosFinal),
%    reverse(EstadosFinal, ReversedEstados),
%    write(ReversedEstados).
%busca_em_largura([Nodo | F1], Estados) :- 
%    vizinho(Nodo, NN),
%    append([Nodo], Estados, Estados2),
%	adicionar_a_fronteira_em_largura(NN, F1, F2),
%	busca_em_largura(F2, Estados2).

%Resposta da letra (f)
diffLists([], _, []) :- !.
diffLists([H1 | T1], RL, [H1 | T]) :- not(member(H1, RL)), !, diffLists(T1, RL, T).
diffLists([H1 | T1], RL, L) :- member(H1, RL), !, diffLists(T1, RL, L).

buscar_em_largura([Nodo | _], _, Estados) :- 
    objetivo(Nodo),
    append([Nodo], Estados, EstadosFinal),
    reverse(EstadosFinal, ReversedEstados),
    write(ReversedEstados).
buscar_em_largura([Nodo | F1], Visitados, Estados) :- 
    append([Nodo], Visitados, Visitados2),
    append([Nodo], Estados, Estados2),
    vizinho(Nodo, V),
    diffLists(V, Visitados2, V2),
    adicionar_a_fronteira_em_largura(V2, F1, F2),
    append(F2, Visitados2, Visitados3),
    buscar_em_largura(F2, Visitados3, Estados2), !.

busca_em_largura(Nodo) :- buscar_em_largura([Nodo | _], [], []).

% Resposta da letra (g)
adicionar_a_fronteira_em_profundidade(V, F1, F2) :- 
    append(V, F1, F2).

buscar_em_profundidade([Nodo | _], _, Estados) :-
    objetivo(Nodo),
    append([Nodo], Estados, EstadosFinal),
    reverse(EstadosFinal, ReversedEstados),
    write(ReversedEstados).
buscar_em_profundidade([Nodo | F1], Visitados, Estados) :- 
    append([Nodo], Visitados, Visitados2),
    append([Nodo], Estados, Estados2),
    vizinho(Nodo, V),
    diffLists(V, Visitados2, V2),
    adicionar_a_fronteira_em_profundidade(V2, F1, F2),
    append(F2, Visitados2, Visitados3),
    buscar_em_profundidade(F2, Visitados3, Estados2), !.

busca_em_profundidade(Nodo) :- buscar_em_profundidade([Nodo | _], [], []).


    