clc
clear
s1=[1 1 1 1 -1 -1 1 1 1 1 -1 -1 1 1 1];
s2=[1 -1 1 1 -1 1 1 1 1 1 -1 1 1 -1 1];
t1=[-1 1];
t2=[1 1];
w1=s1'*t1;
w2=s2'*t2;
w=w1+w2;
y1=s1*w;

for i=1:2
    if (y1(i)>0)
        y1(i)=1;
    else
        y1(i)=-1;
    end
end

y2=s2*w;
for i=1:2
    if (y2(i)>0)
        y2(i)=1;
    else
        y2(i)=-1;
    end
end

display(y1)
display(y2)

y=[0 1]
z1=y*w'
for k=1:length(z1);
    if(z1(k)>0)
        z1(k)= 1;
    else if(z1(k)<0)
        z1(k)=-1;
    else
        z1(k)=0;
    end
end
end

display(z1)

if(z1==s1)
    display('the character is E');
else if(z1==s2)
        display('The character is H');
    else
        display('The character is neither E or H');
    end
end