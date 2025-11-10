# Cyclic Codes Algorithm

## Purpose
Encode and decode messages using cyclic codes.

## Algorithm Steps

### Input Phase
1. Accept the number of message bits (k)
2. Accept the number of code bits (n)
3. Accept the message word (m)

### Generator Polynomial Generation
4. Generate the generator polynomial G(x) for cyclic code using:
   - Code length: n
   - Message length: k
   - Selection criterion: 'max' (maximum distance)
5. Convert polynomial to symbolic form
6. Display the generator polynomial G(x)

### Encoding Process
7. Encode the message using cyclic encoding:
   - Input: message (m)
   - Code parameters: n, k
   - Generator polynomial: G
8. Display the encoded codeword

### Decoding Process
9. Decode the received codeword using cyclic decoding:
   - Input: encoded codeword
   - Code parameters: n, k
   - Generator polynomial: G
10. Display the decoded message word

### Output
- Generator polynomial G(x)
- Encoded codeword
- Decoded message word

## Mathematical Foundation
- Cyclic codes are linear block codes where cyclic shifts of codewords are also codewords
- Generator polynomial G(x) divides x^n + 1
- Encoding: C(x) = M(x) · G(x)
- Where M(x) is the message polynomial and C(x) is the codeword polynomial
