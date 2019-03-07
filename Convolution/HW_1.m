for i=1:1:400
    y_1(i)=x_1(i);
end

for i=1:1:400
    y_2(i)=x_2(i);
end

%{
%problem 1

figure;
subplot(211)
stem(y_1)
title('X1[n]')

subplot(212)
stem(y_2)
title('X2[n]')
%}

%{
%problem 2
Y=conv(y_1,y_2)
stem(Y)
%}

%problem 3

for i=1:1:800
    y3(i)=x_3(i);
end
y=my1conv(y3,y3)
