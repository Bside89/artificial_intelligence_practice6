function [ Idx ] = kfold_cv( Data )
%K-FOLD_CV Particiona um conjunto de dados utilizando validação
%cruzada K-fold
%   Recebe um conjunto de dados em formato matricial e devolve uma matriz
%   de índices.
%
%   A partição do conjunto de dados se dá da seguinte forma:
%   - Cada vetor coluna desta matriz de índices corresponde a uma das k
%   subdivisões;
%   - É feita a separação do conjunto principal em 1 conjunto para testes e
%   k-1 conjuntos de treinamento;
%   - Cada um dos vetores colunas terão valores lógicos (booleanos);
%   - Cada posição do vetor contendo 'true' indica que aquele índice será
%   usado na matriz de dados para filtrar os dados usados para testes;
%   - Cada posição do vetor contendo 'false' indica que aquele índice será
%   usado na matriz de dados para filtrar os dados usados para treinamento;
%
%   Condição necessária para funcionamento correto da função:
%   A matriz de dados deve conter os exemplos armazenados em cada linha da
%   matriz, sendo as colunas correspondentes às características.

m = size(Data, 1);  % Qtd. de linhas (exemplos)
n = floor(m/k);     % Tamanho de cada um dos k subconjuntos

Idx = I(k);

end

