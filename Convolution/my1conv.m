function y=my1conv(x1,x2)
    for i=1:1:400
        for j=1:1:400
            if j>i
                y1(i,j)=0;
            else
                y1(i,j)=x1(i-j+1);
            end
        end
    end
    for i=1:1:400
        for j=1:1:400
            if j>i
                y1(i+400,j)=x1(400+i-j+1);
            else
                y1(i+400,j)=0;
            end
        end
    end
    for i=1:1:400
        y2(i,1)=x2(i);
    end
    y1
    y=y1*y2;
    stem(y)
    