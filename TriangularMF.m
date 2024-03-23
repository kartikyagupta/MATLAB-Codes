x = 0:10:100;
y = trimf(x,[10 50 90]);
plot(x,y)
xlabel('x')
ylabel('Membership Grade')
ylim([-0.05 1.05])
grid