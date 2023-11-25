%5.25日第四章综合案例
%------------------------------分界符----------------------------------%
%例4.19
a=0;b=3*pi;
n=1000;
h=(b-a)/n;%每个区间宽度
x=a;s=0;
f0=exp(-0.5*x)*sin(x+pi/6);
for i=1:n
    x=x+h;
    f1=exp(-0.5*x)*sin(x+pi/6);
    s=s+h*(f1+f0)/2;
    f0=f1;
end
disp(s);

%例4.20参考作业第七题

%------------------------------分界符----------------------------------%
%例4.21
X=input('输入x的值');
E=zeros(size(X));
F=eye(size(X));
n=1;
while norm(F,1)>0
    E=E+F;
    F=F*X/n
    n=n+1;
end
disp(E)
expm(X) %expm表示矩阵指数函数










