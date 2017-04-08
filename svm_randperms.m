function [ tr_d, tr_l, te_d, te_l ] = svm_randperms( features, labels )
%SVM_RANDPERMS Retorna uma permutação aleatória dos dados
%   Retorna uma permutação aleatória dos dados, tanto para treinamento
%   quanto para testes.

M = size(features, 1);
N = floor(2*M/3);

trainIndex = zeros(N, 1);
I = randperm(M); 
trainIndex(I(1:N)) = 1;

testIndex = zeros(N, 1); 
testIndex(I(N+1:end)) = 1;

tr_d = features(trainIndex == 1, :); % Training data
tr_l = labels(trainIndex == 1, :);   % Training label
te_d = features(testIndex == 1, :);  % Test data
te_l = labels(testIndex == 1, :);    % Test label

end
