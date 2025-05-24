% Parameters
Fs = 1000;
T = 1/Fs;
t = 0:T:5;
f_input = 5;
f_vco = 4;
Kpd = 1;
Kvc = 0.5;
Kf = 0.1;
% Sampling frequency (Hz)
% Sampling period (s)
% Time vector (5 seconds)
% Input signal frequency (Hz)
% Initial VCO frequency (Hz)
% Phase detector gain
% VCO gain (Hz/V)
% Loop filter gain
% Input signal (sine wave)
input_signal = sin(2 * pi * f_input * t);
% PLL variables
theta_vco = 0;
% VCO phase
vco_output = zeros(size(t)); % VCO output
phase_error = zeros(size(t)); % Phase error
control_voltage = zeros(size(t)); % Control voltage
% Simulation loop
for i = 2:length(t)
% Calculate VCO output
theta_vco = theta_vco + 2 * pi * f_vco * T; % Update VCO phase
vco_output(i) = sin(theta_vco); % VCO output signal
% Calculate phase error (difference in output signal)
phase_error(i) = input_signal(i) - vco_output(i); % Amplitude error
% Control voltage calculation (simple proportional control)
control_voltage(i) = control_voltage(i-1) + Kpd * phase_error(i) * T;
% Update VCO frequency based on control voltage
f_vco = 4 + Kvc * control_voltage(i); % Ensure the frequency is reasonable
end
% Plot results
figure;
% Plot Input Signal and VCO Output
subplot(4,1,1);
plot(t, input_signal, 'b', t, vco_output, 'r--');
title('Input Signal and VCO Output');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Input Signal', 'VCO Output');
grid on;
% Plot Phase Error
subplot(4,1,2);
plot(t, phase_error);
title('Phase Error');
xlabel('Time (s)');
ylabel('Phase Error');
grid on;
% Plot Control Voltage
subplot(4,1,3);
plot(t, control_voltage);
title('Control Voltage');
xlabel('Time (s)');
ylabel('Control Voltage (V)');
grid on;
% Plot Output Signal (VCO Output)
subplot(4,1,4);
plot(t, vco_output);
title('Output Signal (VCO Output)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
sgtitle('Phase Locked Loop Simulation');
