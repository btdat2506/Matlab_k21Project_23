function a = DH_lui_ham(f,x,h,Oh)
    f = str2func(['@(x)' f]);
    if Oh == 1 %Oh
        a=(f(x)-f(x-h))/h;
    elseif Oh == 2  %Oh^2
        a=(3*f(x)-4*f(x-h)+f(x-2*h))/(2*h);
    end
end