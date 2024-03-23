%data generation
numPts=51;
x=linspace(-1,1,numPts)';
y=0.6*sin(pi*x)+0.3*sin(3*pi*x)+0.1*sin(5*pi*x);
data=[x y];
%Divide data to training and checking and plot
trndata=data(1:2:numPts,:); %alternative datasets it will take i.e 1:2 (odd number of data)
chkdata=data(2:2:numPts,:); %even number of datapoints
%Plot training and checking data with symbols o and x respectively;
figure(1)
plot(trndata(:,1),trndata(:,2),'o',chkdata(:,1),chkdata(:,2),'x')
grid on
xlabel("x")
ylabel("y")
title("Anfis Program")
numMFs=5;
mfType='gbellmf';
fis=genfis1(trndata,numMFs,mfType);
[x,mf]=plotmf(fis,'input',1);
figure(3)
plot(x,mf)
% ANFIS-training by 1000 rounds (the meaning of NaN is that default settings are
used concerning the %issue,
epoch_n = 1000;
[fismat1,trnErr,ss, fismat2,chkErr]= anfis(trndata,fis,epoch_n,NaN,chkdata);
trnOut=evalfis(fismat1,trndata(:,1));
trnRMSE=norm(trnOut-trndata(:,2))/sqrt(length(trnOut));
%evalfis calculates the output of fuzzy system
chkOut=evalfis(fismat2,chkdata(:,1));
% plot error
chkRMSE=norm(chkOut-chkdata(:,2))/sqrt(length(chkOut));
epoch=1:epoch_n;
figure(2)
plot(epoch,trnErr,'o',epoch,chkErr,'x')
figure(4)
plot(epoch,trnRMSE,'O',epoch,chkRMSE,'X')