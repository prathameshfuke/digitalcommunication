# BPSK Modulation - Probability of Error Algorithm

## Purpose
Calculate and plot the probability of error (Pe) for Binary Phase Shift Keying (BPSK) modulation.

## Algorithm Steps

### Input Phase
1. Accept the energy per bit (Eb) in Joules
2. Accept the power spectral density of noise (No) in microWatts/Hz

### Signal-to-Noise Ratio Calculation
3. Calculate the range of SNR values (Eb/No):
   - Start: 0
   - Step: 0.001
   - End: Eb/No
   - Store in array x

### Probability of Error Calculation
4. Calculate the probability of error for BPSK using the formula:
   - Pe_BPSK = 0.5 × erfc(√x)
   - Where erfc is the complementary error function
   - x is the signal-to-noise ratio

### Visualization
5. Create a new figure window
6. Plot Pe_BPSK vs SNR (x) with:
   - Line width: 2
   - Grid enabled
7. Label the axes:
   - X-axis: "Signal-to-Noise Ratio (Eb/No)"
   - Y-axis: "Probability of Error Pe"
8. Add legend: "Pe_BPSK"
9. Add title: "Probability of Error for BPSK Modulation"

### Output
- Graph showing the relationship between SNR and probability of error for BPSK

## Mathematical Foundation
- BPSK: Binary Phase Shift Keying uses two phases to represent 0 and 1
- Probability of error: Pe = 0.5 × erfc(√(Eb/No))
- As SNR increases, probability of error decreases
- erfc(x) = 2/√π ∫[x to ∞] e^(-t²) dt
