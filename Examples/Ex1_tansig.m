close all
clear all
clc
w = [4 -2]
b = -3 % Neuron bias
func = 'tansig' % Activation function
p = [2 3]
activation_potential = p*w'+b
neuron_output = feval(func, activation_potential)