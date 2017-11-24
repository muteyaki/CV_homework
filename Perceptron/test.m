clear all;
close all;
clc;
%感知器实现and和or运算

X=[0,0;
    0,1;
    1,0;
    1,1];
Y=[0;0;0;1];
Z=[0;1;1;1];

[w_and,b_and]=trainper(X,Y,10,0.1);
[w_or,b_or]=trainper(X,Z,10,0.1);
x=[0,0];
y_and=and_or(x,w_and,b_and);
y_or=and_or(x,w_or,b_or);
fprintf('%g and %g = %g',x(1),x(2),y_and);
fprintf('\n')
fprintf('%g or %g = %g',x(1),x(2),y_or);


t=0:0.1:1.5;
y_a=t.*w_and(1)+t.*w_and(2)+b_and;
y_o=t.*w_or(1)+t.*w_or(2)+b_or;
subplot(1,2,1);
plot(t,y_a);
grid on;
axis([0 1.5 0 1.5]);
title('and曲线');
subplot(1,2,2);
plot(t,y_o);
grid on;
