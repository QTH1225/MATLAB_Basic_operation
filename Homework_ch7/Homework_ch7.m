%5.27日作业
%------------------------------分界符----------------------------------%
%第一题
A_1=[15,1,-1,0;1,0,3,-1;-1,-1,0,5;0,0,2,4];
b_1=[1;2;3;-1];
disp('方程的解为');
x_1=A_1\b_1

%------------------------------分界符----------------------------------%
%第二题
z=fzero(@funx,1.5) %使用fzero函数进行查找根

%------------------------------分界符----------------------------------%
%第三题
options=optimset('Display','off');
x=fsolve(@myfun,[0.5,0.5]',options) %使用fsolve求方程的根

%可以将解带回原方程检验
q=myfun(x)

%------------------------------分界符----------------------------------%
%第四题
%函数文件还没写


%------------------------------分界符----------------------------------%
%第五题
%解微分方程租
x0=[0,0,10^(-10)]';
[t,x]=ode23(@lorenz,[0,100],x0);
%绘制相平面图
plot3(x(:,1),x(:,2),x(:,3));
axis([0,50,-30,30,-30,30])




