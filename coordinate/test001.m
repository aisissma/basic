%%% test001.m ~coordinate system~
close all

%%% cell index
outerRadius = 5;
outerWorldRangeMax = 2*(outerRadius) + 1;
x = (1:outerWorldRangeMax)-(outerRadius+1);
y = x;

worldSize = 1;
rectDataX = [0 worldSize worldSize 0 0];
rectDataY = [0 0 worldSize worldSize 0];

[xi, yi] = meshgrid(x, y);

xii = xi(:)';
yii = yi(:)';
oii = ones(size(xii));
len = length(xii);

data = [xii; yii; oii];

%[cx, cy] = cell_kernel(0.5, 1/50, 1);
[cx, cy] = cell_kernel(1, 1/4, 2);

%%% display %%%%%
figure
hold on;
%plot(cxii, cyii,'.r')
plot(rectDataX, rectDataY, '-r');
plot(xii, yii,'.')
title('outer world');
legend('world');
