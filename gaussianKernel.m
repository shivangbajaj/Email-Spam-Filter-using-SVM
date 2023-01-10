function sim = gaussianKernel(x1, x2, sigma)

%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

x3 = x1 - x2;
n = x3' * x3;
d = 2*(sigma^2);
sim = exp(-n/d);

end
