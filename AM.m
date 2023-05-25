% Chuong trinh vi du ve dieu che AM
%% Set parameters
% Message
A = 1; % amplitude
f = 440; % frequency [Hz]
phi = -pi/4; % Phase [rad]
% Carrier
m = 0.5; % modulation index
Ac = A/m; % amplitude
fc = 5e3; % frequency [Hz]
phi_c = 0; % Phase [rad]
N = 2^9; % number of samples
T0 = 0; % start time [s]
Tf = 5e-3; % end time [s]
Ts = (Tf-T0)/(N-1); % sampling period
fs = 1/Ts; % sampling frequency [Hz]
%% Amplitude Modulation
% Generate sinusoid
t = T0:Ts:Tf; % time vector
x = A*cos(2*pi*f*t+phi); % message signal
xc = Ac*cos(2*pi*fc*t+phi_c); % carrier signal
% Modulation
y = (1+x/Ac).*xc;