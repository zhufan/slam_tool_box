function [vec] = so3_log(rotation)
%so3_log 
% input: rotation
%output: vec
%vec = skew_unhat(log(rotation))
    t = (trace(rotation) - 1) / 2;
    if t > 1
        t = 1;
    end
    if t < -1
        t = -1;
    end
    theta = acos(t);
    if theta == 0
        vec = [0;0;0];
        return
    end
    [V, D] = eig(rotation);
    norm_vec = [norm(D(1,1) - 1); norm(D(2,2)-1);norm(D(3,3)-1) ];
    [~,index] = min(norm_vec);
    a = V(:,index);
    vec1 = a * theta;
    vec2 = -a*theta;
    rot1 = so3_power(vec1);
    rot2 = so3_power(vec2);
    if norm(rot1 * rot1.' - eye(3)) < norm(rot2 * rot2.' - eye(3))
        vec = vec1;
        return;
    else
        vec = vec2;
        return;
    end
end

