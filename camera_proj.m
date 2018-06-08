function [pic] = camera_proj(point, k)
%camera_proj project 3d point to image plane
%input: point k
%output: pic(2 dim vec)
%pic * z = k * point
p = k * point;
pic = [p(1) / p(3); p(2)/p(3)];
end

