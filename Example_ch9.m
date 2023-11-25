%5.30日第七章综合案例
%------------------------------分界符----------------------------------%
%例9.8传染病控制问题
syms a b c y(t)
f=dsolve(diff(y,t)==a*y*(1-y)-c*y,y(0)==b)
%假如此时有a=c，则解ode方程
f=dsolve(diff(y,t)==a*y*(1-y)-a*y,y(0)==b)

%绘制病人曲线
syms a b c y(t)
f=dsolve(diff(y,t)==a*y*(1-y)-a*y,y(0)==b)
a=0.3;b=0.3;c=0.7;
t=1:0.1:50;
subplot(2,1,1);
plot(t,eval(f));

txt = texlabel('{lambda}={mu}=0.3,{b}=0.7');  %texlabel使用tex语法作为文本 
title(txt)

subplot(2,1,2);

syms a b c y(t)
f=dsolve(diff(y,t)==a*y*(1-y)-c*y,y(0)==b);
a=0.3;
b=0.3;
c=0.15;
t=1:0.1:50;
plot(t,eval(f));
txt2=texlabel('{lambda}=b=0.3,{mu}=0.15')
title(txt2)









