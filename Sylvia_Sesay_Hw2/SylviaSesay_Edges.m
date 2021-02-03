IMAGE_NAME1='LeBron_James.jpg';
J= imread(IMAGE_NAME1);

Ibw1= rgb2gray(J);

figure(1);
subplot(1,2,1);
imshow(J);
subplot(1,2,2);
imshow(Ibw1);

figure(2);
imhist(Ibw1);
title('Lebron grayscale');


Mx = [ -1 0 1; -1 0 1; -1 0 1];
My = [ 1 1 1; 0 0 0; -1 -1 -1];

ddx= conv2(Ibw1, Mx, 'same');
ddy= conv2(Ibw1, My, 'same');

figure(3);
subplot(1,2,1);
imshow(uint8(ddx));
subplot(1,2,2);
imshow(uint8(ddy));

edgeMap= sqrt(ddx.^2 + ddy.^2);

figure(4);
imshow(uint8(edgeMap));                                 
LB1= uint8(edgeMap);

figure(5);
imhist(LB1);
title('Lebron Histogram for Figure4');

figure(6);
pctVal1 = 90;
pctXValHigh= prctile(edgeMap,pctVal1,'all');
filtEdgeMask= (edgeMap > pctXValHigh);
filtEdgeMap = edgeMap.*filtEdgeMask;
LB2= uint8(filtEdgeMap);
imhist(LB2);
title('Lebron in 10th percentile'); 

figure(7);
pctVal1 = 80;
pctXValHigh= prctile(edgeMap,pctVal1,'all');
filtEdgeMask= (edgeMap > pctXValHigh);
filtEdgeMap = edgeMap.*filtEdgeMask;
LB3= uint8(filtEdgeMap);
imhist(LB3);
title('Lebron in 20th percentile');

figure(8);
pctVal1 = 10;
pctXValHigh= prctile(edgeMap,pctVal1,'all');
filtEdgeMask= (edgeMap > pctXValHigh);
filtEdgeMap = edgeMap.*filtEdgeMask;
LB4= uint8(filtEdgeMap);
imhist(LB4);
title('Lebron in 90th percentile');

figure(9);
BWL1 = edge(LB1,'Sobel');
imshow(BWL1);

%figure(10);
%BWL2 = edge(LB1,'Pruitt');
%imshow(BWL2);


IMAGE_NAME2='Gabrielle_Union.jpeg';
G= imread(IMAGE_NAME2);
Ibw2= rgb2gray(G);

figure(11);
subplot(1,2,1);
imshow(G);
subplot(1,2,2);
imshow(Ibw2);


figure(12);
imhist(Ibw2);
title('Gabrielle grayscale');

ddxx= conv2(Ibw2, Mx, 'same');
ddyy= conv2(Ibw2, My, 'same');

figure(13);
subplot(1,2,1);
imshow(uint8(ddxx));
subplot(1,2,2);
imshow(uint8(ddyy));

edgeMap2= sqrt(ddxx.^2 + ddyy.^2);

figure(14);
imshow(uint8(edgeMap2));                                 
GU1= uint8(edgeMap2);

figure(15);
imhist(GU1);
title('Gabrielle Histogram for Figure4');

figure(16);
pctVal2 = 90;
pctXValHigh= prctile(edgeMap2,pctVal2,'all');
filtEdgeMask= (edgeMap2 > pctXValHigh);
filtEdgeMap = edgeMap2.*filtEdgeMask;
GU2= uint8(filtEdgeMap);
imhist(GU2);
title('Gabrielle in 10th percentile'); 

figure(17);
pctVal2 = 80;
pctXValHigh= prctile(edgeMap,pctVal2,'all');
filtEdgeMask= (edgeMap > pctXValHigh);
filtEdgeMap = edgeMap.*filtEdgeMask;
GU3= uint8(filtEdgeMap);
imhist(GU3);
title('Gabrielle in 20th percentile');

figure(18);
pctVal2 = 10;
pctXValHigh= prctile(edgeMap,pctVal2,'all');
filtEdgeMask= (edgeMap > pctXValHigh);
filtEdgeMap = edgeMap.*filtEdgeMask;
GU4= uint8(filtEdgeMap);
imhist(GU4);
title('Gabrielle in 90th percentile');

figure(19);
BWG1 = edge(GU1,'Sobel');
imshow(BWG1);

%figure(20);
%BW2 = edge(GU1,'Pruitt');
