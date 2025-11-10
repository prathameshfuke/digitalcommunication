# M-ary QAM Modulation - Probability of Error Algorithm

## Purpose
Calculate and plot the probability of error (Pe) for M-ary Quadrature Amplitude Modulation (M-ary QAM).

## Algorithm Steps

### Input Phase
1. Accept the energy per bit (Eb) in Joules
2. Accept the power spectral density of noise (No) in microWatts/Hz
3. Accept the number of symbols (M)

### Signal-to-Noise Ratio Calculation
4. Calculate the range of SNR values (Eb/No):
   - Start: 0
   - Step: 0.001
   - End: Eb/No
   - Store in array x

### Probability of Error Calculation
5. Calculate the probability of error for QAM using the formula:
   - Pe_QAM = 0.5 × erfc(√(0.4 × x))
   - Where:
     - erfc is the complementary error function
     - x is the signal-to-noise ratio
     - 0.4 is the scaling factor for QAM

### Visualization
6. Create a new figure window
7. Plot Pe_QAM vs SNR (x) with:
   - Line width: 2
   - Grid enabled
8. Label the axes:
   - X-axis: "Signal-to-Noise Ratio (Eb/No)"
   - Y-axis: "Probability of Error Pe"
9. Add legend: "Pe_qam"
10. Add title: "Probability of Error for QAM"

### Output
- Graph showing the relationship between SNR and probability of error for QAM

## Mathematical Foundation
- QAM combines amplitude and phase modulation
- Uses both I (in-phase) and Q (quadrature) components
- M-ary QAM can represent log₂(M) bits per symbol
- Symbols arranged in a rectangular constellation
- More bandwidth efficient than PSK for higher order modulations
- Probability of symbol error: Pe ≈ 2(1 - 1/√M) × erfc(√(3Eb/No / (M-1)))
- The simplified formula uses 0.4 as an approximation factor
