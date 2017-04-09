function [ accuracy, acc_data ] = svm_measure_accuracy( features, labels, C, k )
%SVM_MEASURE_ACCURACY Summary of this function goes here
%   Detailed explanation goes here

c = cvpartition(labels, 'k', k);
acc_data = zeros(k, 3);

for i=1:k,
    
    trainData = features(c.training(i), :);
    trainLabel = labels(c.training(i), :);
    testData = features(c.test(i), :);
    testLabel = labels(c.test(i), :);
    
    options = strcat(['-c ', num2str(C), ' -t 2 -g 0.07 -b 1']);
    model = svmtrain(trainLabel, trainData, options);
    [~, tmp, ~] = svmpredict(testLabel, testData, model, '-b 1');
    
    acc_data(i, :) = tmp';
    
end

accuracy = mean(acc_data(:, 1));

end
