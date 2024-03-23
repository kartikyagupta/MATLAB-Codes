x = (0:1:10)';
y1 = trapmf(x, [2 3 7 9]);
y2 = trapmf(x, [3 4 6 8]);
plot(x, [y1 y2]);
ylim([-0.05 1.05])
grid