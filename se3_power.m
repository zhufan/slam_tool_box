function [R, t] = se3_power(phi, rho)
%se3_power
%input: phi(rotation part) rho
%ouput: R t
    R = so3_power(phi);
    t = calculate_J(phi) * rho;
end

function [J] = calculate_J(phi)
    theta = norm(phi);
    a = phi / theta;
    J = sin(theta) / theta * eye(3) + (1 - sin(theta)/theta) * (a * a.') + (1 - cos(theta))/theta * skew_hat(a);
end

