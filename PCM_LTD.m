function [code, xq, sqnr] = PCM_LTD(x, M)
    Nb = log2(M);
    Amax = max(abs(x));
    delta = 2 * Amax / (M - 1);
    Mq = -Amax:delta:Amax;
    Ml = 0:M-1;
    xq = zeros(size(x));
    xcode = xq;
    
    for k = 1:M
        ind = find(x > Mq(k)-delta/2 & x <= Mq(k)+delta/2);
        xq(ind) = Mq(k);
        xcode(ind) = Ml(k);
    end
    
    sqnr = 20 * log10(norm(x) / norm(x - xq));
    code = de2bi(xcode, Nb, 'left-msb');
end

