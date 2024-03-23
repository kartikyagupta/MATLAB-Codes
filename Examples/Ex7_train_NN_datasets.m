x=0:0.01:2
y=1./((x-0.3).^2+0.01)+1./((x-0.9).^2+0.04)-6
x1=x'
y1=y'
[trainx, valx, testx]=dividerand(x,0.5,0.0,0.5)
[trainy, valy, testy]=dividerand(y,0.5,0.0,0.5)
x2=testx'
y2=testy'
P=trainx'
T=trainy'
figure(1)
plot(P,T, 'x')
grid
xlabel('time(s)')
ylabel('output')
title('humps function')
net=newff([0 2],[5 2 1],{ 'tansig','purelin','purelin'},'trainlm)
net.trainParam.epochs=1000
net.trainParam.show=50
net.trainParam.lr=0.05
net.trainParam.goal=1e-3
net1=train(net,P',T')
a=sim(net1,x2')
figure(2)
plot(y2-a')
grid