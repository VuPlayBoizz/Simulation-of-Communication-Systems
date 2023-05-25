% Định nghĩa hàm f(x)
f = @(x) 4*x.^3*2*exp(x).*cos(x);

% Điểm bắt đầu và điểm kết thúc của đoạn tích phân
a = -1.5;
b = 1.5;

% Số lượng đoạn
n = 100;

% Độ dài mỗi đoạn con
h = (b - a) / n;

% Khởi tạo biến tổng
sum = 0;

% Vòng lặp tính toán
for i = 1:n
    % Tính giá trị của điểm giữa đoạn con
    x_mid = a + (i - 0.5) * h;
    
    % Cộng giá trị của hàm tại điểm giữa vào tổng
    sum = sum + f(x_mid);
end

% Tính kết quả cuối cùng của tích phân
integral_value = h * sum;

% In kết quả
disp(['Giá trị tích phân: ', num2str(integral_value)]);
