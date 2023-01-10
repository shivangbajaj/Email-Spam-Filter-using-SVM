function x = emailFeatures(word_indices)

%   EMAILFEATURES takes in a word_indices vector and produces a feature vector
%   from the word indices

% Total number of words in the dictionary
n = 1899;

% You need to return the following variables correctly.
x = zeros(n, 1);

%   Return a feature vector for the given email (word_indices). 
for i = word_indices
  x(i) = 1;
endfor

end
