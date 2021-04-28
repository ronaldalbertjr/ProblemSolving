%Nessa parte são definidas todas as cores que podem ser computadas pelo programa.
cor(azul).
cor(rosa).
cor(laranja).
cor(preto).

%Nessa parte estabelecemos a fronteira entre duas variaveis, e essas variaveis, fazem fronteira se as suas cores são diferentes.
%É importante notar que o caminho inverso não é valido, ou seja se suas cores são diferentes não necessariamente existe um fronteira.
fronteira(X, Y) :- cor(X), cor(Y), X \= Y.

%Aqui é definido o mapa para o qual será encontrada uma coloração, cada uma das regiões do mapa é representada, por uma variável, que vai ter como valor uma cor.
%Dentro do mapa é necessário definir as fronteiras e as variáveis assumirão todos os valores possíveis para aquela disposição de fronteiras.

%Notar também que a clausula 'mapa' retorna uma unica coloração devido a existência do cut no final da clausula, caso esse cut seja retirado a clausula retornará
%todas as colorações possíveis.
mapa(X1, X2, X3, X4, X5):-
    fronteira(X1, X2), fronteira(X1, X3), fronteira(X1, X4), fronteira(X2, X3),
    fronteira(X2, X4), fronteira(X4, X5), !.

%Para realizar uma consulta basta consultar a clausula mapa passando todas as variaveis definidas.
