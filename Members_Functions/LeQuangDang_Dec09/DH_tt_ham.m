function a = DH_tt_ham(f,x,h,Oh)
    % f ở dạng string
    % Oh loại sai số bắt cụt
    % Oh là dạng O(h^2)
    fx = str2func(['@(x)' f]);
    a = (fx(x+h)-fx(x-h))/(2*h);
end
