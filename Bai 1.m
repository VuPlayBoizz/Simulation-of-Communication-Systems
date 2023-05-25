%==========================================================================
%====================== Sim_FWC_01_2_PSD_Modulation =======================
%==========================================================================

clc;
clear;
close all;

% Tham so
% f       =   input ('Nhap ta so khao sat=');%linspace(-2000,2000,1500);
f       =   linspace(-2000,2000,1500);
Tb      =   1/250;%input('Nhap thoi gian bit=');%0.005;
Rb      =   250;
P       =   1;
A       =   1;
AA      =   A^2*Tb;
fc      =   400;        % Carrier Frequncy
Eb      =   P*Tb;

% PSD of BaseBand Signal
    PSD_BaseBand = AA*(sinc((f*Tb)).^2);

% PSD of M-PSK <=> PSD_M_BPSK = Eb*log2(M)*((sinc((f-fc)*Tb*log2(M))).^2)
    PSD_BPSK    = (Eb*log2(2))*((sinc((f-fc)*Tb*log2(2))).^2);
    PSD_QPSK    = (Eb*log2(4))*((sinc((f-fc)*Tb*log2(4))).^2);
    PSD_8_PSK   = (Eb*log2(8))*((sinc((f-fc)*Tb*log2(8))).^2);    
    % PSD double side
    PSD_BPSK_2    = (Eb*log2(2)/2)*(((sinc((f-fc)*Tb*log2(2))).^2) + ((sinc((f+fc)*Tb*log2(2))).^2));
    PSD_QPSK_2    = (Eb*log2(4)/2)*(((sinc((f-fc)*Tb*log2(4))).^2) + ((sinc((f+fc)*Tb*log2(4))).^2));
    PSD_8_PSK_2   = (Eb*log2(8)/2)*(((sinc((f-fc)*Tb*log2(8))).^2) + ((sinc((f+fc)*Tb*log2(8))).^2));    
    
% PSD of MSK: PSD_MSK = ((8*Eb)/pi)*((cos(2*pi(f-fc)*Tb))/(16*(Tb^2)*(f-fc).^2)-1)
    SF          = ((16*Eb)/(pi^2));
    Num         = (cos(2*pi*(f-fc)*Tb));
    Dum         = (16*(Tb^2)*(f-fc).^2)-1;    
    PSD_MSK     = SF*((Num./Dum).^2);    
    % PSD_MSK double side
    Num_2       = (cos(2*pi*(f+fc)*Tb));
    Dum_2       = (16*(Tb^2)*(f+fc).^2)-1;    
    PSD_MSK_2   = (SF/2)*(((Num./Dum).^2) + ((Num_2./Dum_2).^2));
    
figure(1)
subplot(2,1,1);
    plot(f,PSD_BaseBand,'b','LineWidth',3);
    xlabel('Tan so [H_z]','FontName','.VnTime','color','b','FontSize',14);
    ylabel('PSD Dau vao khoi dieu che','FontName','.VnTime','color','b','FontSize',14);    
    title(['Mat do pho cong suat PSD cua tin hieu dau vao khoi dieu che R_b=',num2str(Rb),'b/s'],...
        'FontName','.VnTime','color','b','FontSize',12);
    grid on;    
subplot(2,1,2);
    plot(f,PSD_BPSK,'b','LineWidth',3);
    hold on
    plot(f,PSD_QPSK,'g','LineWidth',3);
    hold on   
    xlabel('Tan so [H_z]','FontName','.VnTime','color','b','FontSize',14);
    ylabel('PSD cua BPSK-QPSK','FontName','.VnTime','color','b','FontSize',14);    
    title(['So sanh mat do pho cong suat PSD cua tin hieu BPSK; QPSK; voi toc do R_b =',num2str(Rb),'b/s',...
        '; Tan so song mang f_c =',num2str(fc),'H_Z'],...
        'FontName','.VnTime','color','b','FontSize',12);
    grid on;
    L   = legend('PSD cua BPSK','PSD cua QPSK',...
        'PSD cua 8PSK');
    set(L, 'fontname','.Vntime','fontsize',13);
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    

%==========================================================================    