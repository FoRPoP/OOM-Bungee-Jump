tmax = 50;
l = 30;
d0 = 10;
%tspan = [0 tmax];
tspan = linspace(0, tmax, 100000);

[t, y] = ode45('diffEq', tspan, [0 0]);

disp('Maksimalna dubina pri masi m = 60kg: ');
disp(max(y(:,1)))
figure(1)
plot(t, -y(:,1));
line([0, tmax],[-(l+d0),-(l+d0)], "linestyle", "-", "color", "r")
xlabel('Vreme [s]');
ylabel('Pozicija [m]')
title('Zavisnost pozicije tela od vremena')