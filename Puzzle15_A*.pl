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
