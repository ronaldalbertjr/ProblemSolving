import numpy as np

class Tabuleiro:
    def __init__(self, n, queens=[]):
        self.n = n
        self.queens = queens if not np.array_equal(queens, []) else self.gerarTabuleiro()
        
    def gerarTabuleiro(self):
        queens = np.random.randint(1, self.n + 1, size=(self.n))
        return queens
    
    def gerarVizinhos(self):
        if hasattr(self, 'vizinhos'):
            return self.vizinhos
        
        vizinhos = []
        for i in range(0, self.n):
            for j in range(0, self.n):
                vizinho = self.queens.copy()
                if vizinho[i] != j + 1:
                    vizinho[i] = j + 1
                    vizinhos.append(Tabuleiro(self.n, vizinho))
        np.random.shuffle(vizinhos)
        self.vizinhos = vizinhos
        return vizinhos
    
    def vizinho(self):
        if hasattr(self, 'vizinhos'):
            return self.vizinhos[np.random.randint(0, self.n)]
        return  self.gerarVizinhos()[np.random.randint(0, self.n)]
    
    def avaliarTabuleiro(self):
        if hasattr(self, 'n_ataques'):
            return self.n_ataques
        
        n_ataques = 0
        for i in range(0, self.n):
            for j in range(i + 1, self.n):
                if self.queens[i] == self.queens[j]:
                    n_ataques += 1
                elif self.queens[i] + (j - i) == self.queens[j]:
                    n_ataques += 1
                elif self.queens[i] - (j - i) == self.queens[j]:
                    n_ataques += 1
        self.n_ataques = n_ataques
        return n_ataques
    
    def print_tabuleiro(self):
        matriz_rainha = np.zeros((self.n,self.n))
        for i in range(self.n):
            for j in range(self.n):
                matriz_rainha[i][j] = 0
        for i in range(self.n):            
            for j in range(self.n):
                if self.queens[j] == i+1:                
                    matriz_rainha[i][j] = 1 
        matriz_texto = "+"
        for i in range(self.n):
            matriz_texto += "---"
        matriz_texto += "+\n|"
        for i in range(self.n):
            matriz_texto += ""
            for j in range(self.n):
                if matriz_rainha[i][j] == 0:
                    matriz_texto += " . "
                else:
                    matriz_texto += " Q "
                if j == self.n-1:
                    if i == self.n-1:
                        matriz_texto += "|\n"
                    else:
                        matriz_texto += "|\n|"
        matriz_texto += "+"
        for i in range(self.n):
            matriz_texto += "---"
        matriz_texto += "+\n"
        matriz_texto += "|"
        for i in range(self.n):
            matriz_texto += "   "
        matriz_texto += "|\n"
        matriz_texto += "+"
        for i in range(self.n):
            matriz_texto += "---"
        matriz_texto += "+\n"
        print(matriz_texto)
        
def HillClimbing_1(estado_inicial):
    corrente = estado_inicial
    iteracoes = 0
    while True:
        iteracoes += 1
        f_corrente = corrente.avaliarTabuleiro() * -1
        for v in corrente.gerarVizinhos():
            if (v.avaliarTabuleiro() * -1) > f_corrente:
                corrente = v
                break
        if(f_corrente == corrente.avaliarTabuleiro() * -1):
            return (corrente, iteracoes)
        
        
def HillClimbing_2(estado_inicial):
    corrente = estado_inicial
    iteracoes = 0
    while True:
        iteracoes += 1
        vizinho_candidato = corrente
        f_corrente = (corrente.avaliarTabuleiro() * -1)
        melhor_f = f_corrente
        for v in corrente.gerarVizinhos():
            f_vizinho = (v.avaliarTabuleiro() * -1)
            if f_vizinho > melhor_f:
                melhor_f = f_vizinho 
                vizinho_candidato = v
        if melhor_f > f_corrente:
            corrente = vizinho_candidato
        else:
            return (corrente, iteracoes)

results = []
count = 0
f = np.inf
while f != 0:
    a = Tabuleiro(8)
    (resultado, it) = HillClimbing_1(a)
    results.append(it)
    f = resultado.avaliarTabuleiro()
    count += 1
print("Foram necessários " + str(count) + " Execuções para o Hill Climbing 1 chegar a solução")
print("O número médio de iterações foi " + str(np.mean(results)))

results = []
count = 0
f = np.inf
while f != 0:
    a = Tabuleiro(8)
    (resultado, it) = HillClimbing_2(a)
    results.append(it)
    f = resultado.avaliarTabuleiro()
    count += 1
print("Foram necessários " + str(count) + " Execuções para o Hill Climbing 2 chegar a solução")
print("O número médio de iterações foi " + str(np.mean(results)))

# Tabuleiro 4x4
#
# Hill Climbing 1
# Número de execuções até chegar a solução: 5 
# Número de tabuleiros corrente gerado em média: 2.60 
#
# Hill Climbing 2
# Número de execuções até chegar a solução: 3 
# Número de tabuleiros corrente gerado em média por execução: 2.60 
#
# Tabuleiro 8x8
#
# Hill Climbing 1
# Número de execuções até chegar a solução: 10
# Número de tabuleiros corrente gerado em média: 5.90 
#
# Hill Climbing 2
# Número de execuções até chegar a solução: 4 
# Número de tabuleiros corrente gerado em média por execução: 4.66 
#
# Tabuleiro 16x16
#
# Hill Climbing 1
# Número de execuções até chegar a solução: 27
# Número de tabuleiros corrente gerado em média por execução: 12.22
#
# Hill Climbing 2
# Número de execuções até chegar a solução: 18 
# Número de tabuleiros corrente gerado em média: 7.94 
#
# Tabuleiro 32x32
#
# Hill Climbing 1
# Número de execuções até chegar a solução: 446
# Número de tabuleiros corrente gerado em média: 25.63
#
# Hill Climbing 2
# Número de execuções até chegar a solução: 88 
# Número de tabuleiros corrente gerado em média por execução: 14.26
#
def SimulatedAnnealing(TempInicial, MaxIt, alpha, n):
    corrente = Tabuleiro(n)
    melhor_estado = corrente
    temp = TempInicial
    for i in range(0, MaxIt):
        vizinho = corrente.vizinho()
        delta = vizinho.avaliarTabuleiro() - corrente.avaliarTabuleiro()
        
        if delta <= 0:
            corrente = vizinho
            melhor_estado = vizinho if vizinho.avaliarTabuleiro() <= melhor_estado.avaliarTabuleiro() else melhor_estado
        elif np.exp(-delta/temp) > np.random.rand():
            corrente = vizinho
            
        temp *= alpha
    
    return melhor_estado

results = []
for i in range(10000):
    x = SimulatedAnnealing(10000, 100, 0.9, 8)
    results.append(x.avaliarTabuleiro())
    
print(np.mean(results).round(2))
print(np.std(results).round(2))

# Executando 10.000 testes a cada uma das entradas:
#
#Tabuleiro 4x4:
#
# Entrada 1: TempInicial = 5; MaxIt = 20; alpha = 0.1
# Média: 1.14
# Desvio Padrão: 0.73
#
# Entrada 2: TempInicial = 5; MaxIt = 100; alpha = 0.1
# Média: 0.99
# Desvio Padrão: 0.7
#
# Entrada 3: TempInicial = 5; MaxIt = 100; alpha = 0.8
# Média: 0.84
# Desvio Padrão: 0.62
#
# Entrada 4: TempInicial = 20; MaxIt = 100; alpha = 0.8
# Média: 0.78
# Desvio Padrão: 0.59
#
# Entrada 5: TempInicial = 50; MaxIt = 100; alpha = 0.8
# Média: 0.73
# Desvio Padrão: 0.57
#
# Entrada 6: TempInicial = 100; MaxIt = 100; alpha = 0.9
# Média: 0.53
# Desvio Padrão: 0.52   
#
# Entrada 7: TempInicial = 50; MaxIt = 100; alpha = 0.1
# Média: 0.96
# Desvio Padrão: 0.69
#
# Entrada 8: TempInicial = 1000; MaxIt = 100; alpha = 0.9
# Média: 0.47
# Desvio Padrão: 0.51
#
# Entrada 9: TempInicial = 1000; MaxIt = 1000; alpha = 0.9
# Média: 0.45
# Desvio Padrão: 0.51
#
# Entrada 10: TempInicial = 10000; MaxIt = 100; alpha = 0.9
# Média: 0.43
# Desvio Padrão: 0.5

#Tabuleiro 8x8:
#
# Entrada 1: TempInicial = 5; MaxIt = 20; alpha = 0.1
# Média: 3.42
# Desvio Padrão: 1.14
#
# Entrada 2: TempInicial = 5; MaxIt = 100; alpha = 0.1
# Média: 2.28
# Desvio Padrão: 0.95
#
# Entrada 3: TempInicial = 5; MaxIt = 100; alpha = 0.8
# Média: 2.27
# Desvio Padrão: 0.93
#
# Entrada 4: TempInicial = 20; MaxIt = 100; alpha = 0.8
# Média: 2.25
# Desvio Padrão: 0.92
#
# Entrada 5: TempInicial = 50; MaxIt = 100; alpha = 0.8
# Média: 2.24
# Desvio Padrão: 0.83
#
# Entrada 6: TempInicial = 100; MaxIt = 100; alpha = 0.9
# Média: 2.27
# Desvio Padrão: 0.82   
#
# Entrada 7: TempInicial = 50; MaxIt = 100; alpha = 0.1
# Média: 2.27
# Desvio Padrão: 0.95
#
# Entrada 8: TempInicial = 1000; MaxIt = 100; alpha = 0.9
# Média: 2.47
# Desvio Padrão: 0.82
#
# Entrada 9: TempInicial = 1000; MaxIt = 1000; alpha = 0.9
# Média: 2.12
# Desvio Padrão: 0.82
#
# Entrada 10: TempInicial = 10000; MaxIt = 100; alpha = 0.9
# Média: 2.89
# Desvio Padrão: 0.81
#
