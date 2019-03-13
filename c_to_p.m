function [r,theta] = c_to_p(x,y)
    r = sqrt(x*x+y*y);
    if r == 0
        theta = 0;
    else
        if x > 0
            theta = atan(y/x);
        elseif x<0
            theta = -atan(y/x);
        elseif y>0
            theta = pi/2;
        else
            theta = -pi/2;
        end
    end
end

