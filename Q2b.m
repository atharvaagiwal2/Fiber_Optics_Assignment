clc
clear
close all
funct = @(V) (6*(sqrt(2)+1)^2 * V.^4 .* ((V.^4 +4).^1.5 - V.^4.*(V.^4+4).^0.25 +4)-V.^4.*(V.^4+4).^(7/4))./((V.^4+4).^(13/4).*((V.^4+4).^0.25+1).^4);
fplot(funct,[0 10])
xlabel('Normalized Frequency (V) >>>>>')
ylabel('V(d^{2}(Vb)/dV^{2}) >>>>>')
grid on
