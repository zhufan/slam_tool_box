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
syms r00 r01 r02 r10 r11 r12 r20 r21 r22
R = [r00 r01 r02; r10 r11 r12; r20  r21  r22];

%t
syms t0 t1 t2
t = [t0;t1;t2];

%point
syms x y z
p = [x;y;z];

%camera projection
p1 = transform_point(R, t, p);
[R_delta, t_delta] = se3_power_infinitesimal(phi, rho);
p2 = transform_point(R_delta, t_delta, p1);
u = camera_proj(p2, k);

%calculate jacobian
pose_delta = [phi;rho];
fprintf('jacobian matrix of pose: \n');
pose_jacobian=jacobian(u, pose_delta);
disp(pose_jacobian);
fprintf('jacobian matrix of point: \n');
point_jacobian=jacobian(u, p);
disp(point_jacobian);

%export function
matlabFunction(pose_jacobian, 'File', 'pose_jacobian', 'Vars', {phi, rho, [fx;fy;cx;cy], R, t, p});
matlabFunction(point_jacobian, 'File', 'point_jacobian',  'Vars', {phi, rho, [fx;fy;cx;cy], R, t, p});


