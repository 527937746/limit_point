function f = piral_gully(r,theta)
if r <= 1
    f = 0;
else
    temp = r - 1;
    f = temp*temp*(sin(1./temp - theta) + 1);
end
end

