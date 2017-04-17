% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Script Octave/MATLAB que deve ser utilizado para testar o classificador SVM 
% 
% Você deve encontrar o melhor valor de C.
%

clear; close all; clc;

%% ======== Parâmetros de ajuste ===============================================

% Quantidade de subconjuntos na validação cruzada k-fold
k = 3;

% Potências do parâmetro C
% Como, em geral, o parâmetro C em qualquer modelo SVM é muito grande,
% expressamos C em potências de 2 com valores elevados de expoente.
n = [0 1 10 10^2 10^3];

% Parâmetro C, dado em potência de base b = 10
C = 2.^n;

%% ======== Inicialização do experimento =======================================

addpath('./libsvm-3.22/matlab');

[labels, features] = libsvmread('parkData.txt');

m = size(n, 2);
macc = zeros(1, m);        % Mean accuracy (acurácia média)
accdata = cell(1, m);  % Tabela de dados (obtida na função svmpredict)

for i=1:m,
    [macc(i), accdata{i}] = svm_test_model(features, labels, C(i), k);
end

accdata
macc
