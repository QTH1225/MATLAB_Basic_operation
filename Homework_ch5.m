%5.19日作业
%------------------------------分界符----------------------------------%
%第一题图
x_11=-10:0.1:10;
y_11=100./(1+x_11.^2);
plot(x_11,y_11)

figure

%第二题图
x_22=-10:0.1:10;
y_22=(1/(2*pi)).*exp(x_22.^2./2);
plot(x_22,y_22)

figure

%第三题图
f=@(x_33,y_33) x_33.^2+y_33.^2-1;
fimplicit(f,[-2,2,-2,2]); %绘制隐函数图像

figure

%第四题图
t_44=0:0.1:5;
x_44=t_44.^2;
y_44=5.*t_44.^3;
plot(x_44,y_44)

%fplot(@(t) t^2,@(t) 5*t^3,[0,5]) %这样也可以使用，但是会警告

%------------------------------分界符----------------------------------%
%第一题图
tt_1=0:0.1*pi:2*pi;
rho_1=5.*cos(tt_1)+4;
polarplot(tt_1,rho_1)

figure

%第二题图
tt_2=0:0.1*pi:10*pi;
rho_2=12./sqrt(tt_2)
polarplot(tt_2,rho_2)

figure

%第三题图
tt_3=0:0.1*pi:10*pi;
rho_3=sin(3.*tt_3).*cos(6.*tt_3)
polarplot(tt_3,rho_3)

figure

%第四题图
tt_4=0:0.1*pi:10*pi;
rho_4=pi/3.*tt_4.^2
polarplot(tt_4,rho_4)

%------------------------------分界符----------------------------------%
%%第三题
x_31=0:0.1*pi:pi;
y_31=2.*x_31-0.5;
plot(x_31,y_31);

hold on

t_3=0:0.1*pi:pi;
x_32=sin(3.*t_3).*cos(t_3);
y_32=sin(35).*sin(t_3);
polarplot(x_32,y_32)

k=find(abs(y_31-y_32)<1e-2);
x_33=x_31(k);
y_33=2.*x_33-0.5;
plot(x_31,y_31,x_32,y_32,'k:',x_33,y_33,'bo')

%------------------------------分界符----------------------------------%
%%第四题
%第一张图
t_4=0:0.1:10*pi;
x_4=cos(t_4);
y_4=sin(t_4);
z_4=t_4;
plot3(x_4,y_4,z_4)

%第二张图
u_4=-10*pi:0.1*pi:100*pi;
v_4=-10*pi:0.1*pi:100*pi;
xx_4=(1+cos(u_4)).*cos(v_4);
yy_4=(1+cos(u_4)).*sin(v_4);
zz_4=sin(u_4);
plot3(xx_4,yy_4,zz_4)

%------------------------------分界符----------------------------------%
%%第五题
x_5=linspace(-5,5,21);
y_5=linspace(0,10,31);
[X,Y]=meshgrid(x_5,y_5);
z_5=cos(X).*cos(Y).*exp(-sqrt(X.^2+Y.^2)/4);
subplot(1,2,1);
mesh(X,Y,z_5); %mesh函数仅绘制线图；surf提供填充
subplot(1,2,2);
contour3(X,Y,z_5,12,'k') %等高线使用contour3函数进行创建

%------------------------------分界符----------------------------------%
%%第六题
%方法一
y_6=-10:0.1:10;
z_6=y_6.^3;
plot(y_6,z_6)

%方法二
fplot(@(yy_6) yy_6^3,[-10,10])
%另一种fimplicit函数一般用来绘制隐函数




