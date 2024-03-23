x = 0:0.1:10;
y = trapmf(x,[1 5 7 8]);
plot(x,y)
xlabel('x')
ylabel('Membership Function')
axis([0 10 -0.05 1.05])
title('Trapezoidal MF')
grid