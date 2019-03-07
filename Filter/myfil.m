function y=myfil
n = 1:1000;
Ts = 0.002;fl=100;
x = cos(2*pi*(n-1)*Ts)+2*cos(2*pi*fl*(n-1)*Ts);
x1 = cos(2*pi*(n-1)*Ts);
x2 = 2*cos(2*pi*fl*(n-1)*Ts);

figure;
subplot(2, 2, 1);
plot(x);
[b, a] = butter(16, 0.2);
y =filter(b, a, x);

subplot(2, 2, 2);
plot (n, y, n, x1);

subplot(2, 2, 3);
plot(x);
[d, c] = butter(16, [0.25 0.9]);
y =filter(d, c, x);
subplot(2, 2, 4);
plot (n, y, n, x2);



