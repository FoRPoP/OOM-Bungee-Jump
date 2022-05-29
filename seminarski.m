m0 = 60;
d0 = 10;
l0 = 30;
l = 30;
t0 = 0;

tmax = 100;
ts = linspace(0, tmax, 1000);
figure(1)
plot(ts, -movementFunc(ts));
%pokazati dubinu(kao horizontalu) na kojoj bi telo bilo obeseno u stanju mirovanja
line([0, tmax],[-(l+d0),-(l+d0)], "linestyle", "-", "color", "r")
xlabel('Vreme [s]');
ylabel('Pozicija [m]')
title('Zavisnost pozicije tela od vremena')

%grafik zavisnosti max dubine(l+d) od mase tela
ms = linspace(1, 1000, 1000);
figure(2)
plot(ms, -(l + massDepthFunction(ms)))
xlabel('Masa [kg]');
ylabel('Maksimalna dostignuta dubina [m]')
title('Zavisnost max dubine od mase tela')