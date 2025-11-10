% ALGORITHM:
% 1. Input: number of symbols (x), symbols array, probabilities array
% 2. Generate Huffman dictionary using huffmandict()
% 3. Encode symbols using Huffman codes
% 4. Decode to verify correctness
% 5. Calculate entropy: H(X) = -Σ p(i) * log2(p(i))
% 6. Calculate efficiency: η = H(X) / L_avg * 100%
% 7. Display dictionary, encoded sequence, entropy, and efficiency

% Input the symbols and their probabilities
x = input('Enter number of symbols: ');
symbols = zeros(1, x);
p = zeros(1, x);
for m = 1:x
    symbols(m) = input(['Enter symbol number ' num2str(m) ': ']);
    p(m) = input(['Enter probability for symbol ' num2str(m) ': ']);
end

[dict, avglen] = huffmandict(symbols, p);   % Generate Huffman Dictionary

hcode = huffmanenco(symbols, dict);   % Example: encode all symbols once
decoded = huffmandeco(hcode, dict);

Hx = 0;                               % Calculate entropy
for m = 1:x
    Hx = Hx + p(m) * (-log2(p(m)));
end
Efficiency = (Hx / avglen) * 100;     % Efficiency calculation
disp('--- Results ---');              % Display results 
disp('Huffman Dictionary:');
disp(dict);
disp(['Average Codeword Length: ', num2str(avglen)]);
disp(['Entropy (Hx): ', num2str(Hx)]);
disp(['Efficiency: ', num2str(Efficiency), '%']);
disp('Encoded Sequence:');
disp(hcode);
disp('Decoded Sequence:');
disp(decoded);
