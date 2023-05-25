a = 1;
r = 1;
h = 0.25;
t0 = 0;
y0 = 0;
N = 8;

fdot = @(t, y) -a*y + r;

t = zeros(N, 1);
y = zeros(N, 1);

t(1) = t0;
y(1) = y0;

for k = 2:N
    y(k) = y(k - 1) + h * fdot(t(k - 1), y(k - 1));
    t(k) = t(k - 1) + h;
end

% Giải tích nghiệm
y_exact = (r/a)*(1 - exp(-a*t))

% Tính sai số tại t = 1 và t = 2
t_check = [1, 2];
error = abs(y_exact(t_check) - y(t_check));

% In kết quả
disp(['Sai số tại t = 1: ', num2str(error(1))]);
disp(['Sai số tại t = 2: ', num2str(error(2))]);
