# Digital Communication - MATLAB Implementations

This repository contains MATLAB implementations of various digital communication concepts including modulation techniques, error correction codes, and source coding.

## 📁 Contents

### Modulation Techniques
1. **BPSK (Binary Phase Shift Keying)** - `DC_BPSK.m`
   - Probability of error analysis for BPSK modulation
   - SNR vs. error probability plots

2. **M-ary PSK** - `DC_MaryPSK.m`
   - M-ary Phase Shift Keying implementation
   - Performance analysis for different M values

3. **M-ary QAM** - `DC_MQAM.m`
   - Quadrature Amplitude Modulation implementation
   - Error probability calculations

### Channel Coding
4. **Linear Block Codes** - `linear_block_code.m`
   - Encoding and decoding using generator matrix
   - Error detection and correction using syndrome decoding
   - Parity check matrix implementation

5. **Cyclic Codes** - `cyclic_codes.m`
   - Cyclic code encoding/decoding
   - Generator polynomial generation

### Source Coding
6. **Huffman Coding** - `source_coding.m`
   - Variable-length source coding
   - Entropy and efficiency calculations
   - Encoding and decoding demonstration

### Signal Processing
7. **Random Process Analysis** - `DC_RANDOMPROCESS.m`
   - Random variable generation and analysis
   - Statistical property calculations
   - Autocorrelation function computation

## 📖 Algorithms

Detailed algorithms for each implementation are available in the `algorithms/` folder:

- [Cyclic Codes Algorithm](algorithms/cyclic_codes_algorithm.md)
- [BPSK Algorithm](algorithms/DC_BPSK_algorithm.md)
- [M-ary PSK Algorithm](algorithms/DC_MaryPSK_algorithm.md)
- [M-ary QAM Algorithm](algorithms/DC_MQAM_algorithm.md)
- [Random Process Algorithm](algorithms/DC_RANDOMPROCESS_algorithm.md)
- [Linear Block Code Algorithm](algorithms/linear_block_code_algorithm.md)
- [Source Coding Algorithm](algorithms/source_coding_algorithm.md)

## 🚀 Getting Started

### Prerequisites
- MATLAB R2016b or later
- Communications Toolbox
- Signal Processing Toolbox

### Running the Programs

1. Clone the repository:
```bash
git clone https://github.com/prathameshfuke/digitalcommunication.git
cd digitalcommunication
```

2. Open MATLAB and navigate to the repository folder

3. Run any of the scripts:
```matlab
% Example: Run BPSK simulation
DC_BPSK

% Example: Run Huffman coding
source_codeing

% Example: Run linear block code
linear_block_code
```

## 📊 Usage Examples

### BPSK Modulation
```matlab
% Input when prompted:
% Energy per bit (Eb): 10
% PSD of Noise (No): 1
% Output: Plot showing Pe vs. Eb/No curve
```

### Huffman Coding
```matlab
% Input when prompted:
% Number of symbols: 4
% Symbols and probabilities
% Output: Huffman dictionary, encoded sequence, efficiency
```

### Linear Block Code
```matlab
% Input when prompted:
% Message word length (k): 4
% Codeword length (n): 7
% Parity matrix, message word, received codeword
% Output: Encoded codeword, error detection/correction
```

## 📚 Theory

### Modulation Techniques
- **BPSK**: Uses two phases (0° and 180°) to represent binary data
- **M-ary PSK**: Uses M different phases to transmit log₂(M) bits per symbol
- **QAM**: Combines amplitude and phase modulation for higher spectral efficiency

### Error Correction Codes
- **Linear Block Codes**: Systematic codes with generator and parity check matrices
- **Cyclic Codes**: Special class of linear codes with cyclic shift property
- **Syndrome Decoding**: Error detection and correction using syndrome calculation

### Source Coding
- **Huffman Coding**: Optimal prefix-free variable-length coding
- **Entropy**: Measure of average information content
- **Coding Efficiency**: Ratio of entropy to average codeword length

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## 📝 License

This project is open source and available for educational purposes.

## 👤 Author

**Prathamesh Fuke**
- GitHub: [@prathameshfuke](https://github.com/prathameshfuke)

## 📧 Contact

For questions or suggestions, please open an issue in the repository.

---

⭐ Star this repository if you find it helpful!
