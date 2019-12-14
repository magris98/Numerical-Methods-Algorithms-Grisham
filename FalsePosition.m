function c = FalsePosition(f,a,b)
if f(a)*f(b)>0 
    disp('The value of f(a)*f(b)<0, choose other values of a and b')
else
    z=f(b);
    w=f(a);
    c = b - (z * (b-a)) / (z-w);
    err = abs(f(c));
    while err > 0.01
 if w*f(c) < 0
 difference = b - c;
 b = c;
 else
 difference = c - a;
 a = c;
 end
 c = b - (z * (b-a)) / (z-w);
 err = abs(f(c));
    end
end
