% Input parameters
k = input('Enter the length of Message Word: ');
n = input('Enter the length of Codeword: ');
P = input('Enter the Parity Matrix: ');
% Generator matrix                   
G = [eye(k) P];
disp('Generator Matrix (G):');
disp(G);
% Input message word
m = input('Enter the Message Word: ');
% Encoding the message
C = encode(m, n, k, 'linear', G);
disp('Encoded Codeword:');
disp(C);
% Parity check matrix
H = [P' eye(n - k)];
disp('Parity Check Matrix (H):');
disp(H);

% Syndrome table
dtable = syndtable(H);
disp('Syndrome Table:');
disp(dtable);

% Received codeword
R = input('Enter the Received Codeword: ');

% Syndrome calculation
S_B = rem(R * H', 2);
S_D = bi2de(S_B, 'left-msb');

% Error detection and correction
if (S_D == 0)
    disp('The Received Codeword is VALID');
else
    disp('The Received Codeword is INVALID');
    E = dtable(S_D + 1, :);
    disp('Error Pattern:');
    disp(E);
    
    disp('The Corrected Codeword is:');
    CC = rem(R + E, 2);
    disp(CC);
    
    msg = CC(1:k);
    disp('Decoded Message Word:');
    disp(msg);
end
