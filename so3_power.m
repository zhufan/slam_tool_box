function [rotation] = so3_power(vec)
%so3_power
%input: vec
%output: rotation
%rotation = exp(skew_hat(vec))
    theta = norm(vec);
    a = vec / theta;
    rotation = cos(theta) * eye(3) + (1 - cos(theta)) * (a * a.') + sin(theta) * skew_hat(a);
end