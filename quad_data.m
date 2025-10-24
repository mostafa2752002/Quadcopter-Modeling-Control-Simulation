clc; clear; close all;
data=xlsread('Tarek Deif''s Quad','B2:B9');
m=data(1);
Ixx=data(2); Iyy=data(3); Izz=data(4);
g=data(5); b=data(6); d=data(7); L=data(8);
motors_no = 4;
I=[Ixx 0  0;
   0  Iyy 0;
   0  0  Izz];

omega_nom = sqrt((m*g)/(motors_no*b));
omega_max = sqrt(2)*omega_nom;
allocation_matrix = [0   0.5    0.25 0.25;
                    -0.5 0     -0.25 0.25;
                     0  -0.5    0.25 0.25;
                     0.5 0     -0.25 0.25];
               
