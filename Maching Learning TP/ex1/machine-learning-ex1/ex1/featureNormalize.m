function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));   % size(X,2) returns the number of column in X
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

% === for the first feature:
mu1=mean(X_norm(:,1));
X_norm(:,1)=X_norm(:,1)-mu1;
mu(1)=mu1;
std1=std(X_norm(:,1));
sigma(1)=std1;
X_norm(:,1)=X_norm(:,1)/std1;
% === for the seconde feature:
mu2=mean(X_norm(:,2));
X_norm(:,2)=X_norm(:,2)-mu2;
mu(2)=mu2;
std2=std(X_norm(:,2));
sigma(2)=std2;
X_norm(:,2)=X_norm(:,2)/std2;









% ============================================================

end
