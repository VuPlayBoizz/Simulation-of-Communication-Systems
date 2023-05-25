% Ví dụ về biểu diễn mã đѬờng NRZ
function [t,y,code] = nrzcode(d,R,Ns,type)
% Chuong trinh vi du ve ma duong truyen NRZ
% d – chuỗi dữ liệu 
% R – tốc độ dữ liệu 
% Ns – tổng số mẫu biểu diễn 
% t – vector thời gian
% y – vector mẫu đầu ra
% type – kiểu mã (unipolar - 'unipol' or polar - 'pol')
 
Tb = 1/R; % chu kỳ bit
Nb = length(d); % số luợng bit
Timewindow = Nb*Tb; % cửa sổ thời gian biểu diễn 
ts = Timewindow/(Ns-1); % chu kỳ lấy mẫu 
t = 0:ts:Timewindow; % vector thời gian
y = zeros(size(t));
code = [];
    if nargin <=3
        type = 'unipol';
    end
    for k = 1:Ns
        n = fix(t(k)/Tb)+1;
        if n >= Nb 
            n = Nb;
        end
        switch (type)
            case 'unipol'
                y(k) = d(n);
                code(n) = d(n);
            case 'pol'
                y(k) = 2*d(n)-1;
                code(n) = 2*d(n)-1;
        end
    end
end