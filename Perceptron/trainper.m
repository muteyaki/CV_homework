function [w,b]=trainper(X,Y,T,l)
%输入训练集得到w和b，输入训练集X、Y，迭代次数T，学习率l


[n,m]=size(X);
w=zeros(1,m);
b=0;
t=0;
while t<T
    for i=1:n
        y=perceptron(w.*X(i,:)+b);
        w=w+l*(Y(i)-y)*X(i,:);
        b=b+l*(Y(i)-y);
    end
    t=t+1;
end
