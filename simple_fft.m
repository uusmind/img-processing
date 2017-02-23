dt = 0.001;
fs = 1/dt;
f1 = 10;
f2 = 100;

t = 0:dt:0.25;
s1 = sin(2*pi*f1*t);
figure(1), plot(t, s1)

s2 = sin(2*pi*f2*t);
figure(2), plot(t, s2)

s3 = sin(2*pi*f1*t).+sin(2*pi*f2*t).+sin(2*pi*2*f2*t);
figure(3), plot(t, s3)

s3_fft = fft(s3);
A = abs(s3_fft);
N = length(t);
f = (0:N-1)/N*fs;

figure(4), plot(f, A)

nh = floor(N/2)
figure(5), plot(f(1:nh), A(1:nh))