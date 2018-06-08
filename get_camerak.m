function [k] = get_camerak(fx, fy, cx, cy)
%get_camerak get camera matrix
%input: fx fy cx cy
%output: camera matrix k
k = [fx 0 cx;  0 fy cy; 0 0 1];
end