% Input parameters
Eb = input('Enter the Energy per bit in Joules: ');
No = input('Enter the PSD of Noise in microWatts/Hz: ');

% Calculate Signal-to-Noise Ratio (Eb/No)
x = 0:0.001:(Eb/No);

% Calculate Probability of Error for BPSK
Pe_bpsk = 0.5 * erfc(sqrt(x));

% Plotting
figure; % Create a new figure
plot(x, Pe_bpsk, 'LineWidth', 2); % Plot with line width
grid on; % Enable grid
xlabel('Signal-to-Noise Ratio (Eb/No)'); % X-axis label
ylabel('Probability of Error Pe'); % Y-axis label
legend('Pe_{BPSK}'); % Legend
title('Probability of Error for BPSK Modulation'); % Title