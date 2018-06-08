function [vec] = skew_unhat(mat)
%skew_unhat calculate vector of skew symmetric matrix
%input: mat
%output: vec
    if not(isequal(mat, -mat.'))
        error("mat is not skew symmetric matrix");
        return;
    end
    vec = [mat(3,2);mat(1,3);mat(2,1)];
end

