%6.1日作业
%本节中的代码请单独运行
%------------------------------分界符----------------------------------%
%第一题
x_1=sym('6'); y_1=sym('5');
z=(x_1+1)/(sqrt(3+x_1)-sqrt(y_1))

%------------------------------分界符----------------------------------%
%第二题
%第一小题
clear;clc
syms x;
f=(x*(exp(sin(x))+1)-2*(exp(tan(x)-1)))/(sin(x))^3;
% disp('该函数的极限是')
limit(f,x,0)

%第二小题
clear;clc
syms x
f=(sqrt(pi)-sqrt(acos(x)))/sqrt(x+1);
limit(f,x,-1,"right")

%第三小题
clear;clc;
syms x y
f=(1-cos(2*x))/x;
disp('该函数的一阶导数为')
diff(f,x)
disp('该函数的二阶导数为')
diff(f,x,2)

%------------------------------分界符----------------------------------%
%第三题
%第一小题
clear;clc;
syms x
f=1/(1+x^4+x^8);
int(f,x)

%第二小题
clear;clc;
syms x
f=1/(asin(x)^2*sqrt(1-x^2));
int(f,x)

%第三小题
clear;clc;
syms x
f=(x^2+1)/(x^4+1);
int(f,x,0,Inf)

%第四小题
clear;clc;
syms x
f=exp(x)*(1+exp(x))^2;
int(f,0,log(2))

%------------------------------分界符----------------------------------%
%第四题
%第一小题
clear;clc
syms n
f=1/(2*n-1)
symsum(f,n,1,10)

%第二小题
clear;clc
syms x n
f=n^2*x^(n-1);
symsum(f,n,1,Inf) %计算结果为分段函数
g=n^2/5^n
symsum(g,n,1,Inf)

%------------------------------分界符----------------------------------%
%第五题
%第一小题
clear;clc
syms x
f=(exp(x)+exp(-x))/2;
taylor(f,x,0,'Order',5)

%第二小题
clear;clc
syms x
f=tan(x);
taylor(f,x,2,'Order',3)

%------------------------------分界符----------------------------------%
%第五题
%第一小题
clear;clc
syms x
x=solve(2*sin(3*x-pi/4)==1,x)

%第二小题
clear;clc
syms x y
[x,y]=solve(x/y==9,exp(x+y)==3,x,y)

%------------------------------分界符----------------------------------%
%第六题
clear;clc
syms y(x)
D1(x)=diff(y,x,1)
y=dsolve(diff(y,x,2)+4*diff(y,x)+29*y==0,y(0)==0,D1(0)==15)











