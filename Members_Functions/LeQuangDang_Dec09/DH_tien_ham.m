function a = DH_tien_ham(f,x,h,Oh)
    % Oh = 2 là dạng O(h^2)
    % Oh = 1 là dạng O(h)
    fx = str2func(['@(x)' f]);
    if Oh == 1
        a =(fx(x+h)-fx(x))/h;
    elseif Oh == 2
        a=(-fx(x+2*h)+4*fx(x+1*h)-3*fx(x))/(2*h);
    end
end
