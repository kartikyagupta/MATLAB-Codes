w1 = [0.3 0.6 0.1 0.4 0.8];
w2 = [0.7 0.9 0.5 0.3 0.2];
x =[0.5 0.2]; a=0.2;
w='Please Enter the Radius: '; %Enter the radius for which the pattern needs to be generated radius =
input(w);
for
m=1:1:radius
for
i=1:1:length(w1)
d(i)=[(w1(i)-x(1))^2]+[( w2(i)-x(2))^2]; %generation D(J) end
c=min(d); %Calculating Minimum Value
for k=1:1:length(w1) %Working for entire length of w1
if(c==d(k))
w1(k)=w1(k)+a*(x(1)-w1(k));