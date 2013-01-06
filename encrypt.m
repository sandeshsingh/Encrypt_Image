clc;
close all

r=imread('reaper.jpg');
figure(1);
%imshow(r);
tspan=[4500 5000];
Io=[0;0;0];

[t,k]=ode45('rossler_function',tspan,Io);
x=k(1000:end,1);
y=k(1000:end,2);
z=k(1000:end,3);
u=[x;y;z];
save u;

plot3(x,y,z),xlabel('x'),ylabel('y'),zlabel('z');