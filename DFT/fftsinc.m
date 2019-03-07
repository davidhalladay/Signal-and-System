clear;
%problem 1.(a)
r = linspace(-500,500,1001);
Ts= 100/500;
n_ = -500:1:500;
n = n_ * Ts;
x = sinc(n);
figure;
stem(r,x);

%problem 1.(b)
X = fft(x);
X_mag = abs(X);
X_new = fftshift(X_mag); %shift
figure;
stem(r,X_new);
