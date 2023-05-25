M = [1 0 0; 0 1i 1; 1i 1i+1 -3];  % Ma trận M ban đầu

V = [M M; M M];  % Khai triển ma trận M thành ma trận V

V(2, :) = [];  % Xóa hàng 2
V(:, 3) = [];  % Xóa cột 3

z = V(4, :);  % Tạo vectơ z từ hàng 4 của ma trận V

V(4, 2) = 1i + 5;  % Biến đổi giá trị tại V(4,2) thành j+5

disp(V);
disp(z);