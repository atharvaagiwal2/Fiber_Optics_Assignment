clc
clear
close all
ua_sym = [];
wa_sym = [];
ua_anti_sym = [];
wa_anti_sym = [];
for i = 0:6
 if mod(i,2) == 0
 for x = (i)*pi/2:0.1:(i+1)*pi/2
 y = x*tan(x);
 ua_sym = cat(2,ua_sym,x);
 wa_sym = cat(2,wa_sym,y);
 end
 else
 for x = (i)*pi/2:0.1:(i+1)*pi/2
 ua_sym = cat(2,ua_sym,x);
 wa_sym = cat(2,wa_sym,0);
 end
 end
end
for i = 0:6
 if mod(i,2) == 0
 for x = (i)*pi/2:0.1:(i+1)*pi/2
 ua_anti_sym = cat(2,ua_anti_sym,x);
 wa_anti_sym = cat(2,wa_anti_sym,0);
 end
 else
 for x = (i)*pi/2:0.1:(i+1)*pi/2
 y = -x*cot(x);
 ua_anti_sym = cat(2,ua_anti_sym,x);
 wa_anti_sym = cat(2,wa_anti_sym,y);
 end
 end
end
plot(ua_sym,wa_sym,':')
hold on
plot(ua_anti_sym,wa_anti_sym,'--')
hold off
xticks(0:10)
yticks(0:10)
xlabel('ua (rad)')
ylabel('wa (rad)')
legend('Symmetric modes','Antisymmetric modes')
title({'Plot for transcendental equation of TE modes', '( both symmetric and anti-symmetric)','of a symmetric step-index planar slab waveguide.'})
axis([0 10 0 10])
