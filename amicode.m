function [t, y, code] = amicode(d, R, Ns, type)
    % Chuong trinh vi du ve ma AMI
    % d - chuỗi dữ liệu
    % R - tốc độ dữ liệu (data rate)
    % Ns - số lượng mẫu
    % type - loại mã (NRZ - 'NRZ' hoặc RZ - 'RZ')
    % t - vector thời gian đầu ra
    % y - vector mẫu xung đầu ra
    % code - chuỗi mã AMI

    Tb = 1 / R; % Chu kỳ bit
    Nb = length(d); % Số bit
    Timewindow = Nb * Tb; % Cửa sổ thời gian
    ts = Timewindow / (Ns - 1); % Thời gian lấy mẫu
    t = 0:ts:Timewindow; % Vector thời gian
    y = zeros(size(t)); % Khởi tạo vector kết quả
    code = zeros(size(d)); % Khởi tạo vector mã AMI

    if nargin <= 3
        type = 'NRZ';
    end

    s = 0; % Biến đếm sự thay đổi dấu hiệu
    for k = 1:Nb
        if d(k) == 0
            code(k) = 0;
        else
            s = s + 1;
            if mod(s, 2) == 0
                code(k) = 1;
            else
                code(k) = -1;
            end
        end
    end

    switch type
        case 'NRZ'
            y = code;
        case 'RZ'
            for k = 1:Ns
                n = fix(t(k) / Tb) + 1;
                if n > Nb
                    n = Nb;
                end
                if code(n) == 0
                    y(k) = 0;
                else
                    y(k) = code(n);
                end
            end
    end
end
