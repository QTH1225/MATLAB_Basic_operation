%6.2日第八章综合案例
%------------------------------分界符----------------------------------%
%例10-11
%利用区域块对象绘制长方体
clc;clear;
clf; %清空图窗
k=1.5;
%X,Y,Z的每行分别表示各面四个点的x,y,z坐标
X=[0 1 1 0;1 1 1 1; 1 0 0 1;0 0 0 0;1 0 0 1;0 1 1 0]'
Y=k*[0 0 0 0;0 1 1 0; 1 1 1 1;1 0 0 1;0 0 1 1;0 0 1 1]';
Z=[0 0 1 1;0 0 1 1;0 0 1 1;0 0 1 1;0 0 0 0;1 1 1 1]';
%形成与X同样大小的颜色矩阵
tcolor=rand(size(X,1),size(X,2));
patch(X,Y,Z,tcolor,'Facecolor','interp');
view(-37.5,35)
axis equal off %关闭坐标显示

%------------------------------分界符----------------------------------%
%例10-12
clf;
rectangle('Position',[3,3,35,25],'LineWidth',1) 
%[3,3]为坐标位置，[35,25]为长宽
rectangle('Position',[2,2,37,27],'Curvature',0.5,'LineWidth',1)
%圆框矩形，Curvature用来定义方框边曲率
rectangle('Position',[3,3,35,25],'Curvature',[1,1],'LineStyle','-','FaceColor','y')
%画黄色椭圆
for k=0:12
    rectangle('Position',[7.5+k,3+k,25-k*2,25-k*2],'Curvature',[1,1],...
        'FaceColor',[mod(k,2),0,mod(k+1,2)])
end
axis equal

%------------------------------分界符----------------------------------%
%例10-17斐波那契曲线
% clear;clc
% clf;
% x=0;y=1;
% syms v u n
% axis off
% hold on
% for i=1:8
%     a=fibonacci(n);
%     switch mod(n,4)
%         case 0
%             y=y-fibonacci(n-2);
%             x=x-a;
%             ArcEqn=(u-(x-a))^2+(v-y)^2==a^2;
%         case 1
%             y=y-a;
%             ArcEqn=(u-(x+a))^2+(v-(y+a))^2==a^2;
%         case 2
%             x=x+fibonacci(n-1);
%             ArcEqn=(u-x)^2+(v-(y+a))^2==a^2;
%         case 3
%             x=x-fibonacci(n-2);
%             y=y+fibonacci(n-1);
%             ArcEqn=(u-x)^2+(v-y)^2==a^2;
%     end
%     pos=[x,y,a,a];
%     rectangle('Position',pos,'FaceColor',[1,0.9,1])
%     xText=(x+x+a)/2;
%     yText=(y+y+a)/a;
%     text(xText,yText,num2str(a))
%     interval=[x,x+a,y,y+a];
%     fimplicit(ArcEqn,interval,'b','Linewidth',1.5)
% end
















