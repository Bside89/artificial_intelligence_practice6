function [ accuracy, acc_data ] = svm_test_model( X, y, c, k )
%SVM_MEASURE_ACCURACY Calcula a acurácia de um modelo SVM
%   Obtém a acurácia de um modelo SVM dado seu parâmetro C, utilizando a
%   técnica de validação cruzada.

cvp = cvpartition(y, 'k', k);
acc_data = zeros(k, 3);

for i=1:k,
    
    train_data = X(cvp.training(i), :);
    train_label = y(cvp.training(i), :);
    test_data = X(cvp.test(i), :);
    test_label = y(cvp.test(i), :);
    
    options = strcat(['-c ', num2str(c), ' -t 2 -g 0.07 -b 1']);
    model = svmtrain(train_label, train_data, options);
    [~, tmp, ~] = svmpredict(test_label, test_data, model, '-b 1');
    
    acc_data(i, :) = tmp';
    
end

accuracy = mean(acc_data(:, 1));

end
