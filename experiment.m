% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Intelig�ncia Artificial - 2016/2
%
% Script Octave/MATLAB que deve ser utilizado para testar o classificador SVM 
% 
% Voc� deve encontrar o melhor valor de C.
%

clear; close all; clc;

%% ======== Par�metros de ajuste ===============================================

% Quantidade de subconjuntos na valida��o cruzada k-fold
k = 3;

% Pot�ncias do par�metro C
% Como, em geral, o par�metro C em qualquer modelo SVM � muito grande,
% expressamos C em pot�ncias de 2 com valores elevados de expoente.
n = [0 1 10 10^2 10^3];

% Par�metro C, dado em pot�ncia de base b = 10
C = 2.^n;

%% ======== Inicializa��o do experimento =======================================

addpath('./libsvm-3.22/matlab');

[labels, features] = libsvmread('parkData.txt');

m = size(n, 2);
macc = zeros(1, m);        % Mean accuracy (acur�cia m�dia)
accdata = cell(1, m);  % Tabela de dados (obtida na fun��o svmpredict)

for i=1:m,
    [macc(i), accdata{i}] = svm_test_model(features, labels, C(i), k);
end

accdata
macc
