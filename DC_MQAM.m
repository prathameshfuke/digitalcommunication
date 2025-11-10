% User inputs
Eb = input('Enter the Energy per bit in Joules: ');
No = input('Enter the PSD of Noise in micro Watts/Hz: ');
M = input('Enter the number of symbols: ');

% Calculate the Signal-to-Noise Ratio (Eb/No)
x = 0:0.001:(Eb/No);

% Calculate Probability of Error for QAM
Pe_qam = 0.5 * erfc(sqrt(0.4 * x));

% Plotting
figure; % Create a new figure
plot(x, Pe_qam, 'LineWidth', 2); % Plot with line width
grid on; % Enable grid
xlabel('Signal-to-Noise Ratio (Eb/No)'); % X-axis label
ylabel('Probability of Error Pe'); % Y-axis label
legend('Pe_qam'); % Legend
title('Probability of Error for QAM'); % Title