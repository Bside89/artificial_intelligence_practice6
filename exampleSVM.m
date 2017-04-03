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
N = 2*M/3;


%random permutation
trainIndex =  zeros(N, 1);
I = randperm(M); 
trainIndex(I(1:N)) = 1;

testIndex = zeros(N, 1); 
testIndex(I(N+1:end)) = 1;

trainData = features(trainIndex == 1, :);
trainLabel = labels(trainIndex == 1, :);
testData = features(testIndex==1,:);
testLabel = labels(testIndex==1,:);

%ALTERE O VALOR DE C%
C = '1';

model = svmtrain(trainLabel, trainData, strcat(['-c ', C,  ' -t 2 -g 0.07 -b 1']));

[predict_label, accuracy, prob_values] = svmpredict(testLabel, testData, model, '-b 1'); % run the SVM model on the test data

accuracy