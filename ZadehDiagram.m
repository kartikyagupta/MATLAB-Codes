x=0:1:20
muA=1./(1+x./5).^3
musvb=very(muA)
plot(x,muA,x,musvb)
title('Zadeh diagram for the fuzzy set A and Very A')
xlabel('Number')
ylabel('Membership')
text(1,0.33,'very A')
text(5,0.125,'Set A')
grid