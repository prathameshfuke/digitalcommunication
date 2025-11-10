# Linear Block Code - Encoding and Decoding Algorithm

## Purpose
Encode messages using linear block codes, detect and correct errors in received codewords.

## Algorithm Steps

### Input Phase
1. Accept the length of message word (k)
2. Accept the length of codeword (n)
3. Accept the parity matrix (P)

### Generator Matrix Formation
4. Construct generator matrix G:
   - G = [Iₖ | P]
   - Where Iₖ is k×k identity matrix
   - P is the k×(n-k) parity matrix
5. Display generator matrix G

### Encoding Process
6. Accept the message word (m)
7. Encode the message:
   - C = m · G (matrix multiplication)
   - Perform modulo-2 addition
8. Display encoded codeword C

### Parity Check Matrix Formation
9. Construct parity check matrix H:
   - H = [Pᵀ | Iₙ₋ₖ]
   - Where Pᵀ is transpose of P
   - Iₙ₋ₖ is (n-k)×(n-k) identity matrix
10. Display parity check matrix H

### Syndrome Table Generation
11. Generate syndrome table (dtable):
    - Create lookup table for error patterns
    - Maps syndromes to error patterns
12. Display syndrome table

### Error Detection and Correction
13. Accept the received codeword (R)

14. Calculate syndrome:
    - S_B = R · Hᵀ mod 2 (binary syndrome)
    - S_D = binary to decimal conversion of S_B

15. Check syndrome value:
    - **IF S_D = 0:**
      - Display "The Received Codeword is VALID"
      - No error detected
    - **ELSE (S_D ≠ 0):**
      - Display "The Received Codeword is INVALID"
      - Lookup error pattern E in syndrome table using (S_D + 1) as index
      - Display error pattern E
      - Correct the codeword: CC = (R + E) mod 2
      - Display corrected codeword CC
      - Extract message bits: msg = CC[1:k]
      - Display decoded message word

### Output
- Generator matrix (G)
- Encoded codeword (C)
- Parity check matrix (H)
- Syndrome table
- Validation status (VALID/INVALID)
- Error pattern (if error detected)
- Corrected codeword (if error detected)
- Decoded message word (if error detected)

## Mathematical Foundation
- Linear block code: (n, k) code
  - n = codeword length
  - k = message length
  - n-k = parity bits
- Generator matrix: G = [Iₖ | P] of size k×n
- Parity check matrix: H = [Pᵀ | Iₙ₋ₖ] of size (n-k)×n
- Encoding: C = m·G
- Syndrome: S = R·Hᵀ
- Property: C·Hᵀ = 0 for valid codewords
- Error correction: Corrected = Received ⊕ Error Pattern
- All operations in GF(2) (binary field)
