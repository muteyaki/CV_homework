function a=and_or(x,w,b)
%输入训练好的w和b运算得到结果

a=perceptron(x.*w+b);
