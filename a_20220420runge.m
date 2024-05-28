function [x, y] = a_20220420runge(xx0, x1, yy0, h)
n = (x1 - xx0) / h;
x = zeros(n + 1);
y = zeros(n + 1,12);
x(1) = xx0;
y(1,:) = yy0;
for i = 1:n
    x(i + 1) = x(i) + h;
    k1 = a_20220420Yue2Bayesiangame2020_5agentss(x(i), y(i));
    k2 = a_20220420Yue2Bayesiangame2020_5agentss(x(i) + 0.5*h, y(i) + k1*h/2);
    k3 = a_20220420Yue2Bayesiangame2020_5agentss(x(i) + 0.5*h, y(i) + k2*h/2);
    k4 = a_20220420Yue2Bayesiangame2020_5agentss(x(i)+ h, y(i) + k3*h);
    y(i + 1) = y(i) + h*(k1 + 2*k2 + 2*k3 + k4)/6;
end
end
