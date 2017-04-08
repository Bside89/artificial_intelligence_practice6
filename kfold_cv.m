function [ Idx ] = kfold_cv( Data )
%K-FOLD_CV Particiona um conjunto de dados utilizando valida��o
%cruzada K-fold
%   Recebe um conjunto de dados em formato matricial e devolve uma matriz
%   de �ndices.
%
%   A parti��o do conjunto de dados se d� da seguinte forma:
%   - Cada vetor coluna desta matriz de �ndices corresponde a uma das k
%   subdivis�es;
%   - � feita a separa��o do conjunto principal em 1 conjunto para testes e
%   k-1 conjuntos de treinamento;
%   - Cada um dos vetores colunas ter�o valores l�gicos (booleanos);
%   - Cada posi��o do vetor contendo 'true' indica que aquele �ndice ser�
%   usado na matriz de dados para filtrar os dados usados para testes;
%   - Cada posi��o do vetor contendo 'false' indica que aquele �ndice ser�
%   usado na matriz de dados para filtrar os dados usados para treinamento;
%
%   Condi��o necess�ria para funcionamento correto da fun��o:
%   A matriz de dados deve conter os exemplos armazenados em cada linha da
%   matriz, sendo as colunas correspondentes �s caracter�sticas.

m = size(Data, 1);  % Qtd. de linhas (exemplos)
n = floor(m/k);     % Tamanho de cada um dos k subconjuntos

Idx = I(k);

end

