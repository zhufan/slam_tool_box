function [p2] = transform_point(R, t, p1)
%transform_point rigid transformation
%input: R t p1
%output: p2
%p2 = R * p1 + t
p2 = R * p1 + t;
end

