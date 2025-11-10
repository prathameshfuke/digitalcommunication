% ALGORITHM:
% 1. Input: message bits (k), code bits (n), message word (m)
% 2. Generate generator polynomial G(x) using cyclpoly()
% 3. Encode message using cyclic encoding
% 4. Decode codeword to retrieve original message
% 5. Display generator polynomial, encoded codeword, and decoded message

% Input parameters
k = input('Enter the number of message bits (k): ');
n = input('Enter the number of code bits (n): ');
m = input('Enter the message word: ');

% Generate the generator polynomial for cyclic code
G = cyclpoly(n, k, 'max');
gx = poly2sym(G);
disp('Generator Polynomial (g(x)):');
disp(gx);

% Encoding the message
code = encode(m, n, k, 'cyclic', G);
disp('Encoded Codeword:');
disp(code);

% Decoding the received codeword
D = decode(code, n, k, 'cyclic', G);
disp('Decoded Message Word:');
disp(D);
