phi = [0.0002;0.0003;0.0004];
rho = [0.00021;0.00031;0.00041];
camera = [380;382;300;200];
R = [1 0 0; 0 1 0;0 0 1];
t = [1;2;3];
p = [5;6;7];
jacobian_pose = pose_jacobian(phi, rho, camera, R, t, p)
jacobian_point = point_jacobian(phi, rho, camera, R, t, p)