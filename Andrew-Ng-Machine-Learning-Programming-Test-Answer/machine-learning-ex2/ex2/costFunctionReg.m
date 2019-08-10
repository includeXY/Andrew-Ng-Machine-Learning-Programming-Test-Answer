function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
t1=0;
t2=0;
g=zeros(m,1);
g=sigmoid(X*theta);
for i=1:m
	t1=t1+((-y(i)*log(g(i)))-(1-y(i))*log(1-g(i)));
end;
n=size(theta);
for j=2:n
	t2=t2+theta(j)^2;
end;
J=(1/m)*(t1+(lambda/2)*t2);
%Compute J

%t1=0;
%for i=1:m
%	t1=t1+(g(i)-y(i))*X(i,1);
%end;
%grad(1)=(1/m)*t1;

grad(1)=(1/m)*(g-y)'*X(:,1);

for j=2:n
%	t1=0;
%	for i=1:m
%		t1=t1+(g(i)-y(i))*X(i,j);
%	end;
	grad(j)=(1/m)*(g-y)'*X(:,j)+(lambda/m)*theta(j);	
end;	
%Compute grad



% =============================================================

end
