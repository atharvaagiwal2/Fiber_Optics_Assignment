clc
clear all
close all
b = @(V) 1 - ((1+sqrt(2))./(1+(4+V.^4).^(1/4))).^2
fplot(b,[0,10],'r')
xlabel('V >>>>>')
ylabel('b >>>>>')
grid on
legend('LP01 Mode')
title({'Plot of the normalized propagation constant b', ...
'as a function of the normalized frequency parameter V', ...
 'for fundamental HE11 mode (LP01) of a SI fiber'})
