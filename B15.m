% Tạo lưới
x = -2:0.2:2;
y = -1:0.1:1;
[X, Y] = meshgrid(x, y);

% Tính giá trị hàm
Z = X.^2 + Y.^2;

% Vẽ đồ thị
figure;
mesh(X, Y, Z);
title('Đồ thị hàm x^2 + y^2');
xlabel('x');
ylabel('y');
zlabel('z');
