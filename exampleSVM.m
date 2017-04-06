% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Script Octave/MATLAB que deve ser utilizado para testar o classificador SVM 
% 
% Você deve encontrar o melhor valor de C.
%

clear
close all
clc

addpath('./libsvm-3.22/matlab');

[labels, features] = libsvmread('parkData.txt');

M = size(features, 1);
N = floor(2*M/3);

% Random permutation
trainIndex = zeros(N, 1);
I = randperm(M); 
trainIndex(I(1:N)) = 1;

testIndex = zeros(N, 1); 
testIndex(I(N+1:end)) = 1;

trainData = features(trainIndex == 1, :);
trainLabel = labels(trainIndex == 1, :);
testData = features(testIndex == 1, :);
testLabel = labels(testIndex == 1, :);

% ALTERE O VALOR DE C
% Obtenha o melhor valor de C tal que melhore a acurácia
n = 0;
C = 10.^n;
accuracy = zeros(size(n, 2), 3);

for i=1:(size(n, 2)),
    
    model = svmtrain(trainLabel, trainData, strcat(['-c ', num2str(C(i)), ...
                                                    ' -t 2 -g 0.07 -b 1']));
    % Run the SVM model on the test data
    [predict_label, acc, prob_values] = svmpredict(testLabel, testData, model, '-b 1');
    accuracy(i, :) = acc';
    
end

accuracy
