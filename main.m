%% -------------------------------------------------------------------- %%
%  
%  Circulo de Color
%  Curso: Laboratorio de Señales Uniandes
%  Autor: Jorge Luis Mayorga Taborda
%  Codigo: 201110382
% 
%  Fecha: 22/01/2015
%
% ---------------------------------------------------------------------- %


clc
clear all
close all


%------------------------------------------------------------------------ %
% Declarar vectores de angulso
Theta=0:0.01:360;
Radians=((2*pi)/360)*Theta;
addpath('lib');
%------------------------------------------------------------------------


%------------------------------------------------------------------------
% Ecuaciones de Color RGB

%%

wBlue=1;
wRed=1;
wGreen=1;

d=2*pi/3;
pBlue=1*2*pi/3;
pRed=2*2*pi/3;
pGreen=3*2*pi/3;


yBlue    =  BlueSignal(Radians,pBlue);
            
yRed    =   RedSignal(Radians,pRed);

            
            
yGreen=1.5-yRed-yBlue;            
yLuz=yBlue+yRed+yGreen;

plot(Radians,yBlue,'b',Radians,yRed,'r',Radians,yGreen,'g',Radians,yLuz,'black');
%%
Blue=max(0,min(yBlue,1));
Red=max(0,min(yRed,1));
Green=max(0,min(yGreen,1));
%------------------------------------------------------------------------


%------------------------------------------------------------------------
%Color Map 
Color=[Red',Green',Blue'];
%------------------------------------------------------------------------



%------------------------------------------------------------------------
% Diagrama en grados de RGB 
subplot(3,3,[7 8 9]);
plot(Radians,Blue,'b',Radians,Red,'r',Radians,Green,'g');
%------------------------------------------------------------------------




%------------------------------------------------------------------------
% Diagrama en grados de RGB 
subplot(3,3,[1,2,5,6]);
r = linspace(0,1,10);
theta = linspace(0, 2*pi, 100);
[rg, thg] = meshgrid(r,theta);
[x,y] = pol2cart(thg,rg);
pcolor(x,y,thg);
colormap(Color);
shading flat;
axis equal;
%------------------------------------------------------------------------

