function y=x_1(x)
    if x>=1 & x<=200
        y=x;
    elseif x>=201 & x<=399
        y=400-x;
    else
        y=0;
    end
end