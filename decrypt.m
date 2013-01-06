clear;clc;
close all
load e;
figure(3);
imshow(e);
g=e;
tspan=[0 2900];
Io=[0;0;0];

[t,k]=ode45('rossler_function',tspan,Io);
x=k(1500:end,1);
y=k(1500:end,2);
z=k(1500:end,3);
u=[x;y;z];
q=zeros(1,65536);
for p=1:1:65536
    
    q(p)=u(p);
    
end
q=mod(1000*q,256);
q=uint8(q);

n=1;
for i=1:256
    for j=1:256
        ee(i,j)=bitxor(q(n),g(i,j));
        n=n+1;
    end
end

save ee
figure(4);
imshow(ee);
