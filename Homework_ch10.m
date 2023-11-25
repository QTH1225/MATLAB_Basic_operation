%6.2日作业
%------------------------------分界符----------------------------------%
%第一题
%第一小题
clf;clear;clc
x=-pi:.1:pi;
y=x.^2.*exp(2.*x);
h=line(x,y,'Linestyle','-.','Color','g')
xlabel('x')
ylabel('y')
title('Plot of y=x^2*exp(2*x)')
text(2,2^2*exp(2*2),'\leftarrow 3^2*exp(2*3)','FontSize',12)
set(h,'Color','[1,0.5,0]','LineWidth',2) %此处RGB三元组应位于[0,1]之间

%第二小题
clear;clc
t=-10:0.1:10;
x=t.^2;
y=5.*t.^3;
zlabel('t')
xlabel('x')
ylabel('y')
h=plot3(t,x,y,'Linestyle','-.','Color','g') 
%三维的图形对象可以使用plot3函数
set(h,'Color','[1,0.5,0]','LineWidth',2)

%------------------------------分界符----------------------------------%
%第二题
%第一小题
clf;clear;clc;
t=-20*pi:0.1*pi:20*pi
x=t;
y=2.*t.*cos(t);
z=5.*t.*sin(t);
h=plot3(x,y,z,'LineStyle','-.','Color','b')
set(h,'Color','[1,0.5,0]','LineWidth',2)

%第二小题
clf;clear;clc;
x=-100:0.1:100;
t=-100:0.1:100;
v=10.*exp(-0.01.*x).*sin(2000*pi.*t-0.2.*x+pi);
h=plot3(x,t,v,'LineStyle','-','Color','r')
set(h,'LineWidth',2)

%------------------------------分界符----------------------------------%
%第三题
clf;clear;clc;
x=-2*pi:0.1*pi:2*pi;

y1=sin(x);
ha1=axes('Position',[0.2,0.2,0.2,0.7]);
plot(y1,x)
ha1.GridLineStyle='--' %网格线的形式
grid on

y2=cos(x);
ha2=axes('Position',[0.5,0.2,0.45,0.4]);
plot(y2,x)
ha2.GridLineStyle='--'
grid on

y3=tan(x);
ha3=axes('Position',[0.5,0.7,0.2,0.2]);
plot(y3,x)
ha3.GridLineStyle='--'
grid on


y4=cot(x);
ha4=axes('Position',[0.75,0.7,0.2,0.2]);
plot(y4,x)
ha4.GridLineStyle='--'
grid on

%------------------------------分界符----------------------------------%
%第四题 %区域块对象的使用
clf;clear;clc;
l=10
ax=1/2*l+l*cosd(72);
ay=l*cosd(72);
h=l*(tand(72) +1)*sind(36);
X=[l/2;-l/2;ax;-ax;0]';
Y=[0;0;ay;ay,h]';
Z=[0;0;0;0;0]';
tcolor=rand(size(X,1),size(X,2));
patch(X,Y,Z,tcolor,'Facecolor','interp');
view(-37.5,35),
axis off


%------------------------------分界符----------------------------------%
%第五题 %rectangle的使用
clf;clear;clc
rectangle('Position',[2,2,8,8],'Curvature',[1,1],...
    'LineStyle','-','FaceColor','r')
rectangle('Position',[10,2,8,8],'Curvature',[1,1],...
    'LineStyle','-','FaceColor','r')




