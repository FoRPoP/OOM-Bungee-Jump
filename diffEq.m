function xdot = diffEq(t, x)

xdot(1) = x(2);
if x(1) >= 30
    xdot(2) = 9.81-0.981*(x(1)-30);
else
    xdot(2) = 9.81;
end
xdot = xdot';