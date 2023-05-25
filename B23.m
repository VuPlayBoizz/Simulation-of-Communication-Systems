x0 = 0.0001;
x = 2;

while true
    new_x = (x + 2/x)/2;
    error = abs(new_x-x);
    if error < x0
        break;
    end
    x = new_x;
    
end
disp(['Gia tri gan dung cua can 2: ', num2str(x)])