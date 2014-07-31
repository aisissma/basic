%%% test001.m ~coordinate system~
close all

%%% cell index
outerRadius = 3;
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


%%% making data
%%% óêêîÇÃî≠ê∂

num = 10;
dim = 2;
pd  = rand([num, dim]);


%%% display %%%%%
figure
hold on;
%plot(cxii, cyii,'.r')
plot(rectDataX, rectDataY, '-r');
plot(xii, yii,'.');
plot(pd(:,1), pd(:,2), 'or');

title('outer world');
legend('world');

%%% display world
figure 
hold on;
%plot(cxii, cyii,'.r')
plot(pd(:,1), pd(:,2), 'or');
axis([0, worldSize, 0, worldSize]);
title('world');
