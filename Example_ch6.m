%5.25日第六章综合案例
%------------------------------分界符----------------------------------%
%例6.26粮仓通风储存问题
x=20:10:90;
y=(0:5:20)';
z=[8.9,10.32,11.3,12.5,13.9,15.3,17.8,21.3;
    8.7,10.8,11,12.1,13.2,14.8,16.55,20.8;
    8.3,9.65,10.88,12,13.2,14.6,16.4,20.5;
    8.1,9.4,10.7,11.9,13.1,14.5,16.2,20.3;
    8.1,9.2,10.8,12,13.2,14.8,16.9,20.9];
xi=20:90;
yi=(0:20)';
zi=interp2(x,y,z,xi,yi,'spline');
surf(xi,yi,zi)

%------------------------------分界符----------------------------------%
%例6.27股票预测问题
x=[2,3,4,5,8,9,10,11,12,15,16,17,18,19,22,23,24,25,26,29,30];
y=[7.74,7.84,7.82,7.78,7.91,7.97,7.9,7.76,7.9,8.04,8.06,8.11,...
    8.08,8.13,8.03,8.01,8.06,8.0,8.3,8.41,8.28];
subplot(2,2,1);
plot(x,y,'*');
p=polyfit(x,y,3);
subplot(2,2,2);
plot(x,y,'*',x,polyval(p,x));
x1=[31,32,33];
xi=[x,xi];
subplot(2,2,3);
plot(x,y,'*',xi,polyval(p,xi));
subplot(2,2,4);
y1=[8.27,8.17,9.54];
plot(x,y,'*',xi,polyval(p,xi),x1,y1,'rp')







