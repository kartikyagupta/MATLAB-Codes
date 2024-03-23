% To Calculate the output of a simple neuron
close all
clear all
clc
w = [4 -2]
b = -3 % Neuron bias
func = 'tansig' % Activation function
p = [2 3]
activation_potential = p*w'+b
neuron_output = feval(func, activation_potential)

% Positive Linear Activation Function
n = [0; 1; -0.5; 0.5];
a = poslin(n);
%Here is a plot of this transfer function:
n = -5:0.01:5;
plot(n,poslin(n))

n = [0; 2; 0.5; 0.5];
a = poslin(n);
%Here is a plot of this transfer function:
n = -2:0.01:5;
plot(n,poslin(n))

% Binary Sigmoidal function
x = -10:0.1:10;
tmp = exp(-x);
y1 = 1./(1+tmp);
plot(x,y1)

% Rectified Linear Units
x = -10:0.1:10;
y = max(0,x);
plot(x,y)

% Softmax function
n = [2;4;5];
a = softmax(n);
subplot(2,1,1),
bar(n),
ylabel('n')
subplot(2,1,2),
bar(a),
ylabel('a')
S=sum(a)

% Illustration of various Activation functions
x = -10:0.1:10;
tmp = exp(-x);
y1 = 1./(1+tmp);
y2 = (1-tmp)./(1+tmp);
y3 = x;
subplot(231); plot(x, y1); grid on;
axis([min(x) max(x) -2 2]);
title('Logistic Function');
xlabel('(a)');
axis('square');
subplot(232); plot(x, y2); grid on;
axis([min(x) max(x) -2 2]);
title('Hyperbolic Tangent Function');
xlabel('(b)');
axis('square');
subplot(233); plot(x, y3); grid on;
axis([min(x) max(x) min(x) max(x)]);
title('Identity Function');
xlabel('(c)');
axis('square');