function [rotation] = so3_power_infinitesimal(vec)
%so3_power_infinitesimal a approximation of so3_power when norm(vec) is
%very small
%input: vec
%output: rotation
    rotation = eye(3) + skew_hat(vec);
end