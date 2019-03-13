function result = nabla_f(r,theta)
if r <= 1
    result = [0;0];
else
    [x,y] = p_to_c(r,theta);
    nabla_xy_rtheta = [x,-y/(r);y,x/r]./r;
    temp = r - 1;
    nabla_rtheta_f = [2*temp*(sin(1/temp-theta)+1)-cos(1/temp-theta);-temp*temp*cos(1/temp-theta)];
    result = nabla_xy_rtheta*nabla_rtheta_f;
end
end

