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
