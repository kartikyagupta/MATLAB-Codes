%a = softmax(n) = exp(n)/sum(exp(n)) ---------Note this is not a command in MATLAB
n = [2;4;5];
a = softmax(n);
subplot(2,1,1),
bar(n),
ylabel('n')
subplot(2,1,2),
bar(a),
ylabel('a')
S=sum(a)