%i的m次方求和
function f=sumi(i,m) %用于求和的文件

if i<=1
    f=1;
else 
    f=sumi(i-1)+sumi(i-1)*i^m
end
disp(f)