function y = my1but 
%problem 1.(a)
K=100;
n = 1:100;

x = cos(2 *pi *(n-1)/10);
[b, a] = butter(3, 0.1);
[H, w] = freqz(b, a, K);

figure;
%problem 1.(b)
subplot(3, 3, 1);
plot(w, 20*log(abs(H)));
title('magnitude response, L=3, fc=0.1');
ylabel('magnitude(dB)');
xlabel('omega(rad)');

%problem 1.(b)
subplot(3, 3, 2);
plot(w, 180*phase(H)/pi);
title('phase response');
ylabel ('phase(degree)');
xlabel('omega(rad)');

%problem 1.(c)
y = filter(b, a, x);
subplot(3, 3, 3);
stem(n, y);
title('filtered signal');
ylabel('y[n]');
xlabel('n');

%problem 1.(d)
[b, a] = butter(7, 0.1);
[H, w] = freqz(b, a, K);
subplot(3, 3, 4);
plot(w, 20*log(abs(H)));
title('magnitude response, L=7, fc=0.1');
ylabel('magnitude(dB)');
xlabel('omega(rad)');

subplot(3, 3, 5);
plot(w, 180*phase(H)/pi);
title('phase response');
ylabel ('phase(degree)');
xlabel('omega(rad)');
y = filter(b, a, x);

subplot(3, 3, 6);
stem(n, y);
title('filtered signal');
ylabel('y[n]');
xlabel('n');

%problem 1.(e)
[b, a] = butter(3, 0.5);
[H, w] = freqz(b, a, K);

subplot(3, 3, 7);
plot(w, 20*log(abs(H)));
title('magnitude response, L=3, fc=0.5');
ylabel('magnitude(dB)');
xlabel('omega(rad)');

subplot(3, 3, 8);
plot(w, 180*phase(H)/pi);
title('phase response');
ylabel ('phase(degree)');
xlabel('omega(rad)');
y = filter(b, a, x);

subplot(3, 3, 9);
stem(n, y);
title('filtered signal');
ylabel('y[n]');
xlabel('n');