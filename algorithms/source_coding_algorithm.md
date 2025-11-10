# Huffman Source Coding Algorithm

## Purpose
Perform Huffman encoding/decoding and calculate coding efficiency.

## Algorithm Steps

### Input Phase
1. Accept the number of symbols (x)
2. Initialize arrays:
   - symbols[1:x] for storing symbol values
   - p[1:x] for storing probabilities
3. **FOR** each symbol m from 1 to x:
   - Accept symbol number m
   - Accept probability for symbol m
   - Store in respective arrays
4. **END FOR**

### Huffman Dictionary Generation
5. Generate Huffman dictionary using symbols and probabilities:
   - Input: symbols array, probabilities array
   - Output: dict (Huffman dictionary), avglen (average codeword length)
   - Algorithm builds optimal binary tree based on probabilities

### Encoding Process
6. Encode all symbols using Huffman dictionary:
   - Input: symbols array, Huffman dictionary
   - Output: hcode (encoded bit sequence)

### Decoding Process
7. Decode the encoded sequence:
   - Input: hcode, Huffman dictionary
   - Output: decoded (original symbols)

### Entropy Calculation
8. Initialize entropy Hx = 0
9. **FOR** each symbol m from 1 to x:
   - Calculate: Hx = Hx + p[m] × (-log₂(p[m]))
10. **END FOR**

### Efficiency Calculation
11. Calculate coding efficiency:
    - Efficiency = (Hx / avglen) × 100%
    - Where:
      - Hx = entropy
      - avglen = average codeword length

### Output Display
12. Display "--- Results ---"
13. Display Huffman Dictionary (dict)
14. Display Average Codeword Length (avglen)
15. Display Entropy (Hx)
16. Display Efficiency (%)
17. Display Encoded Sequence (hcode)
18. Display Decoded Sequence (decoded)

### Output
- Huffman dictionary with symbol-to-codeword mapping
- Average codeword length
- Source entropy (Hx)
- Coding efficiency percentage
- Encoded bit sequence
- Decoded symbol sequence (verification)

## Mathematical Foundation

### Huffman Coding Principles
- Variable-length prefix-free coding
- More frequent symbols get shorter codes
- Optimal for symbol-by-symbol coding

### Key Formulas
1. **Entropy (Shannon Entropy):**
   - H(X) = -Σᵢ p(xᵢ) × log₂(p(xᵢ))
   - Measures average information content
   - Unit: bits per symbol

2. **Average Codeword Length:**
   - L = Σᵢ p(xᵢ) × len(cᵢ)
   - Where len(cᵢ) is length of codeword for symbol i

3. **Coding Efficiency:**
   - η = (H(X) / L) × 100%
   - Ideal: η = 100% (L = H(X))
   - Huffman coding: η ≥ (H(X) / (H(X) + 1))

4. **Properties:**
   - Kraft inequality: Σᵢ 2⁻ˡⁱ ≤ 1 (for prefix-free codes)
   - H(X) ≤ L < H(X) + 1 (for Huffman codes)
   - No prefix-free code can have shorter average length

### Algorithm Complexity
- Building Huffman tree: O(n log n) where n is number of symbols
- Encoding: O(N) where N is length of input sequence
- Decoding: O(N × h) where h is tree height
