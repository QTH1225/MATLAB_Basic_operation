%5.29日第八章综合案例
%------------------------------分界符----------------------------------%
%例8.10人造卫星问题
a=8755;
b=6810;
format long
funlength=@(x)sqrt(a^2.*sin(x).^2+b^2.^cos(x).^2);
L=4*integral(funlength,0,pi/2)

%例8.11人造卫星问题
x=0:50:600;
y=[4.4,4.5,4.6,4.8,4.9,5.1,5.4,5.2,5.5,5.2,4.9,4.8,4.7];
plot(x,y,'-o');
s=diff(x).*(y(1:end-1)+y(2:end))/2;
I1=sum(s)
I2=trapz(x,y)




