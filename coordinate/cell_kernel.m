%%%%%%%%%%%%%%%%%%%%%
%% %%%%%%%%% gauss distribution
%% x = [x1 x2 ... xn]
%% y = [y1 y2 ... yn]
%% u = [ux uy]
%%
%% delta : [0, 1]
%% 
%% cType: =1, circle, !=1, rectangle
%%%%%%%%%%%%%%%%%%%%
function [cx, cy] = cell_kernel(radius, delta, cType)

if(cType==1)
    t = 0:delta:1;

    cy = radius*cos(2*pi*t);
    cx = radius*sin(2*pi*t);
else
    cx = radius*[0.5 0.5 -0.5 -0.5 0.5];
    cy = radius*[0.5 -0.5 -0.5 0.5 0.5];
end