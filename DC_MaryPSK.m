% User inputs
Eb = input('Enter the Energy per bit in Joules: ');
No = input('Enter the PSD of Noise in micro Watts/Hz: ');
M = input('Enter the number of symbols: ');

% Calculate the Signal-to-Noise Ratio (Eb/No)
x = 0:0.001:(Eb/No);

% Calculate Probability of Error for M-ary PSK
Pe_Marypsk = erfc(sqrt(x) .* sind(180/M));

% Plotting
figure; % Create a new figure
plot(x, Pe_Marypsk, 'LineWidth', 2); % Plot with line width
grid on; % Enable grid
xlabel('Signal-to-Noise Ratio (Eb/No)'); % X-axis label
ylabel('Probability of Error Pe'); % Y-axis label
legend('Pe_Marypsk'); % Legend
title('Probability of Error for M-ary PSK'); % Title