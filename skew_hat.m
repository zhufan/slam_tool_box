function [mat] = skew_hat(vec)
%skew_hat calculate skew symmetric matrix of vector
%input: vec
%output: mat
%mat = vec^
    mat = [0 -vec(3) vec(2); vec(3) 0 -vec(1); -vec(2) vec(1) 0];
end

