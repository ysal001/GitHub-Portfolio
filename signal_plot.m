Fs = 1000; % frequency 
t = 0:1/Fs:1; % Time vector
f = 5; %Singal
A = 1; %Amplitude

% Inputs
f =input('Enter Frequency in Hz: ');
A = input('Enter Amplitude: ');

% Signals                               ↑
sine_wave = A * sin(2*pi*f*t);
cosine_wave = A * cos(2*pi*f*t);
square_wave = A * square(2*pi*f*t);

% PLot
figure;
subplot(3,1,1);
plot(t, sine_wave, 'b');
title ('Sine Wave');
xlabel ('Time (s)');
ylabel ('Amplitude');
grid on;
subplot (3,1,2);
plot(t, cosine_wave, 'r');
title('Cosine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
subplot(3,1,3); 
plot(t,square_wave,'k');
title('Square Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;