
b0 = 0.0976;
b1 = [1, -1];
b2 = [1, 1];
a1 = [1, -0.3575-0.5889i];
a2 = [1, -0.3575+0.5889i];
a3 = [1, -0.7686-0.3338i];
a4 = [1, -0.7686+0.3338i];

%problem 2
b = b0 *conv(conv(b2, b2), conv(b1, b1));
a = conv(a4, conv(a3, conv(a1, a2)));

[r, p, k] = residuez(b, a);
zplane(b, a)

%problem 3
[h, w] = freqz(b, a);
figure;
subplot(2, 1, 1);
plot (w/pi, 20*log10(abs(h))), title('magnitude response');
xlabel('w/pi');
ylabel('magnitude(dB)');
subplot(2, 1, 2);
plot (w/pi, 180*phase(h)/pi), title('phase response');
xlabel('w/pi');
ylabel('phase(degree)');

%problem 4
z = [-1, -1, 1, 1];
p1 = [0.3575+0.5889i, 0.3575-0.5889i, 0.7686+0.3338i, 0.7686-0.3338i];
[sos, g] = zp2sos(z, p1, b0);
sos=sos';
B1 = sos(1:3);
A1 = sos(4:6);
B2 = sos(7:9);
A2 = sos(10:12);
%problem 5
[H1, W1]=freqz(B1, A1);
figure;
subplot(2, 1, 1);
plot (W1/pi, 20*log10(abs(sqrt(g)*H1))), title('H1 magnitude response');
xlabel('w/pi');
ylabel('magnitude(dB)');
subplot(2, 1, 2);
plot (W1/pi, 180*phase(H1)/pi), title('phase response');
xlabel('w/pi');
ylabel('phase(degree)');

[H2, W2]=freqz(B2, A2);
figure;
subplot(2, 1, 1);
plot (W2/pi, 20*log10(abs(sqrt(g)*H2))), title('H2 magnitude response');
xlabel('w/pi');
ylabel('magnitude(dB)');
subplot(2, 1, 2);
plot (W2/pi, 180*phase(H2)/pi), title('phase response');
xlabel('w/pi');
ylabel('phase(degree)');
%problem 6
figure;
[y2, n]=impz(b, (a));
inpX=[1 zeros(1, length(n)-1)];
stem(n, filter(b, (a), inpX)), title('filter()');
xlabel('n');
ylabel('h[n]');
figure;
stem(n, y2), title('impz()');
xlabel('n');
ylabel('h[n]');
