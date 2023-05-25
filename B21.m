% Định nghĩa hàm f(x)
f = @(x) x.^3/3 + 4*x.^2 + x - 6;

% Nhập giá trị đầu vào từ bàn phím
a = input('Nhập giá trị của a: ');
b = input('Nhập giá trị của b: ');

% Kiểm tra tính chính xác của đầu vào
fa = f(a);
fb = f(b);

% Đặt độ chính xác epsilon
epsilon = 1e-6;

% Phương pháp bisection
while abs(b - a) >  epsilon
    % Nghiệm của phương trình
    c = (a + b) / 2;
    fc = f(c);
    
    if sign(fa)* sign(fc) > 0
        a = c;
        fa = fc;
    else
        b = c;
        fb = fc;
    end
end

% In kết quả
disp(['Nghiệm của phương trình là: ', num2str(c)]);
