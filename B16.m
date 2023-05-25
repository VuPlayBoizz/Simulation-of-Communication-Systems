% Bán kính của hình cầu
R = 3;

% Tạo hình cầu
[x, y, z] = sphere(50); % 50 là số lượng điểm trên mỗi chiều

% Scale hình cầu theo bán kính R
x = R * x;
y = R * y;
z = R * z;

% Vẽ hình cầu
figure;
surf(x, y, z);
axis equal; % Đảm bảo hình dạng hình cầu không bị méo
title('Hình cầu với bán kính R = 3');
xlabel('X');
ylabel('Y');
zlabel('Z');
