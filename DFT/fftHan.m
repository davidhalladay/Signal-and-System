clear;
%function

%problem 2.(a)
r = linspace(-500,500,1001);
T=100;
Ts=100/500;
n_ = -125:1:125;
n = n_ * Ts;
w = w(n);
w_new = [zeros(1, 375), w, zeros(1, 375)]
figure;
stem(r,w_new);

%problem 2.(b)
n_ = -500:1:500;
n = n_ * Ts;
x = sinc(n);
y = w_new.*x;
figure;
stem(r, y);

%problem 2.(c)
Y = fft(y);
Y_mag=abs(Y);
figure;
stem(r, fftshift(Y_mag));