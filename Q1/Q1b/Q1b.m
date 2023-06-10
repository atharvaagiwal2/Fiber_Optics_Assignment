f = @(V,b) V.*sqrt(1-b).*tan(V.*sqrt(1-b))-V.*sqrt(b) ;
fimplicit(f,[0 10 0 1],':')
hold on
f1 = @(V,b) -V.*sqrt(1-b).*cot(V.*sqrt(1-b))-V.*sqrt(b) 
fimplicit(f1,[0 10 0 1],'--')
hold off
legend('Symmetric Mode','Anti-symmetric Mode')
title({'Variation of the normalized propagation parameter b','for TE modes with the normalized frequency V','for a planar waveguide'})
grid on
xlabel('V(rad)')
ylabel('b')
