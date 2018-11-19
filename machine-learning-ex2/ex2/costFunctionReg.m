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

h=sigmoid(X*theta);
cost_1=-1*y'*log(h);
cost_2=(1-y)'*log(1-h);
suma=cost_1-cost_2;
reg=(lambda./(2*m))*sum(theta(2:size(theta,1),1).^2);
J=((1/m)*sum(suma))
J=((1/m)*sum(suma))+reg;
suma_grad=(X')*(h-y);
grad=(1/m)*suma_grad;

theta(1,1)=0;
reg_grad=(lambda/m)*theta;
grad=((1/m)*suma_grad)+reg_grad;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
