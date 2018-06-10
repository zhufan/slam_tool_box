function point_jacobian = point_jacobian(in1,in2,in3,in4,in5,in6)
%POINT_JACOBIAN
%    POINT_JACOBIAN = POINT_JACOBIAN(IN1,IN2,IN3,IN4,IN5,IN6)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    10-Jun-2018 12:33:23

cx = in3(3,:);
cy = in3(4,:);
fx = in3(1,:);
fy = in3(2,:);
phi0 = in1(1,:);
phi1 = in1(2,:);
phi2 = in1(3,:);
r00 = in4(1);
r01 = in4(4);
r02 = in4(7);
r10 = in4(2);
r11 = in4(5);
r12 = in4(8);
r20 = in4(3);
r21 = in4(6);
r22 = in4(9);
rho0 = in2(1,:);
rho1 = in2(2,:);
rho2 = in2(3,:);
t0 = in5(1,:);
t1 = in5(2,:);
t2 = in5(3,:);
x = in6(1,:);
y = in6(2,:);
z = in6(3,:);
t4 = r20.*x;
t5 = r21.*y;
t6 = r22.*z;
t7 = r00.*x;
t8 = r01.*y;
t9 = r02.*z;
t10 = t0+t7+t8+t9;
t11 = r10.*x;
t12 = r11.*y;
t13 = r12.*z;
t14 = t1+t11+t12+t13;
t15 = phi0.*t14;
t19 = phi1.*t10;
t16 = rho2+t2+t4+t5+t6+t15-t19;
t17 = phi0.*r10;
t33 = phi1.*r00;
t18 = r20+t17-t33;
t20 = 1.0./t16;
t21 = cx.*t16;
t22 = t2+t4+t5+t6;
t23 = phi1.*t22;
t30 = phi2.*t14;
t24 = rho0+t0+t7+t8+t9+t23-t30;
t25 = fx.*t24;
t26 = t21+t25;
t27 = phi0.*r11;
t34 = phi1.*r01;
t28 = r21+t27-t34;
t29 = 1.0./t16.^2;
t31 = phi0.*r12;
t40 = phi1.*r02;
t32 = r22+t31-t40;
t35 = cy.*t16;
t36 = phi2.*t10;
t41 = phi0.*t22;
t37 = rho1+t1+t11+t12+t13+t36-t41;
t38 = fy.*t37;
t39 = t35+t38;
point_jacobian = reshape([t20.*(fx.*(r00-phi2.*r10+phi1.*r20)+cx.*t18)-t18.*t26.*t29,t20.*(fy.*(r10+phi2.*r00-phi0.*r20)+cy.*t18)-t18.*t29.*t39,t20.*(fx.*(r01-phi2.*r11+phi1.*r21)+cx.*t28)-t26.*t28.*t29,t20.*(fy.*(r11+phi2.*r01-phi0.*r21)+cy.*t28)-t28.*t29.*t39,t20.*(fx.*(r02-phi2.*r12+phi1.*r22)+cx.*t32)-t26.*t29.*t32,t20.*(fy.*(r12+phi2.*r02-phi0.*r22)+cy.*t32)-t29.*t32.*t39],[2,3]);
