%Q7
function f=myfib(n)  %用于求数列的函数文件
f=[1,1];
i=1;
while f(i)+f(i+1)<n
    f(i+2)=f(i)+f(i+1)
    i=i+1
end