%script for calculating jacobian matrix of bundle ajustement problem

%camera matrix
syms fx fy cx cy
k = get_camerak(fx, fy, cx, cy);

%phi
syms phi0 phi1 phi2
phi = [phi0;phi1;phi2];

%rho
syms rho0 rho1 rho2
rho = [rho0;rho1;rho2];

%R
R = get_R_symbol();

%t
t = get_t_symbol();

%point and distrub
syms x y z x_delta y_delta z_delta
p = [x;y;z];
p_delta = [x_delta;y_delta;z_delta];

%camera projection
p1 = transform_point(R, t, p+p_delta);
[R_delta, t_delta] = se3_power_infinitesimal(phi, rho);
p2 = transform_point(R_delta, t_delta, p1);
u = camera_proj(p2, k);

%calculate jacobian
pose_delta = [phi;rho];
fprintf('jacobian matrix of pose: \n');
disp(jacobian(u, pose_delta));
fprintf('jacobian matrix of point: \n');
disp(jacobian(u, p_delta));


