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

% Random permutation
[trainData, trainLabel, testData, testLabel] = svm_randperms(features, labels);

% ALTERE O VALOR DE C
% Obtenha o melhor valor de C tal que melhore a acurácia
n = 0:5:10;
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
