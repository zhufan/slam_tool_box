function [R, t] = se3_power_infinitesimal(phi, rho)
%se3_power_infinitesimal
%input: phi(rotation part) rho
%ouput: R t
    R = so3_power_infinitesimal(phi);
    t = calculate_J_infinitesimal(phi) * rho;
end

function [J] = calculate_J_infinitesimal(phi)
    theta = norm(phi);
    a = phi / theta;
    J = eye(3)  +  theta / 2 * skew_hat(a);
end

