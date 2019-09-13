function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))

%Training on the training set,find optima C and sigma on cross validation set.
%t = [0.01 0.03 0.1 0.3 1 3 10 30];
%C = t(1);
%sigma = t(1);
%i_op = 1;
%j_op = 1;
%model = svmTrain(X, y, C, @(x1, x2)gaussianKernel(x1, x2, sigma));
%predictions = svmPredict(model, Xval);
%min = mean(double(predictions ~= yval));
%si = length(t);
%for i = 1:si
%	for j = 1:si
%		C = t(i);
%		sigma = t(j);
%		model= svmTrain(X, y, C, @(x1, x2)gaussianKernel(x1, x2, sigma));
%		predictions = svmPredict(model,Xval);
%		temp = mean(double(predictions ~= yval));
%		if min>temp,
%			min = temp;
%			i_op = i;
%			j_op = j;
%		end;
%end;
%C = t(i_op);
%sigma = t(j_op);
%The code above is to find the best C and sigma
%Afer running the code,we find the best C and sigma below.
C = 0.3000;
sigma = 0.1000;




% =========================================================================

end
