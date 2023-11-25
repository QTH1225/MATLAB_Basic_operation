%5.25日第五章综合案例
%------------------------------分界符----------------------------------%
%科赫曲线的绘制
tic
depth=6;
koch(20,40,480,40,depth);
axis equal
axis([0,500,0,200])
toc

%------------------------------分界符----------------------------------%
%曲面的绘制
u=linspace(0,pi,50);
v=linspace(0,pi,100);
[u,v]=meshgrid(u,v);
x=(1+cos(u)).*cos(v);
y=(1+cos(u)).*sin(v);
z=sin(u);
subplot(2,2,1);
plot3(x,y,z);
subplot(2,2,2);
mesh(x,y,z);
subplot(2,2,3);
surf(x,y,z);
subplot(2,2,4);
fx=@(u,v)(1+cos(u)).*cos(v);
fy=@(u,v)(1+cos(u)).*sin(v);
fz=@(u,v)sin(u);
fsurf(fx,fy,fz,[0,pi]);





