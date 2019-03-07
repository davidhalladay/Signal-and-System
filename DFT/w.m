function y = w(t)
if abs(t) <= 25
    y = 0.5*(1+cos(2*pi*abs(t)/50));
else  
    y = 0;
end
end