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

k = 3;
n = 0;
C = 10.^n;
macc = zeros(1, size(n, 2)); % Mean accuracy (acurácia média)
accdata = zeros(k, 3, size(n, 2));

for i=1:(size(n, 2)),

    [macc(i), accdata(:, :, i)] = svm_measure_accuracy(features, labels, C(i), k);

end

macc
accdata
