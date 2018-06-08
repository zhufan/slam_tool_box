function [rotation] = get_R_symbol()
%get_R_symbol get symbolic representation of rotation matrix
syms r00 r01 r02 r10 r11 r12 r20 r21 r22
rotation = [r00 r01 r02; r10 r11 r12; r20  r21  r22];
end

