%nova geração de sinal, sem decimar muito
%function gerador de sinal zigbee
%generate a received signal (with awgn noise) in modulation uset by ZigBee
%protocols
%output signal
%output signal as a featured generated signal

% featureP - feature array generator value 1 < featureP < 2
% s = string keyword to generate feature array
% msg = string message to modulate. Case null, generate random message

%preparada para trabalhar com dados randômicos ou clonagem de sinal

function signal = gerador_sinal_wifi_puro2(featureP, s,msg)

spc = 4;                            % samples per chip
msgLen = 8*120;                     % length in bits

if strcmp(msg,'')
   message = randi([0 1], msgLen, 1);  % transmitted message random
else 
   binary = reshape(dec2bin(msg, 8).'-'0',1,[]); % msg to bin message
   message = binary';
end   

data_source = message;

M = 4;                          %   QPSK signal constellation
no_of_data_points = 64;        %   have 64 data points
block_size = 8;                 %   size of each ofdm block
cp_len = ceil(0.1*block_size);  %   length of cyclic prefix
no_of_ifft_points = block_size;           %   8 points for the FFT/IFFT
no_of_fft_points = block_size;

%figure(1)
%stem(message); grid on; xlabel('data points'); ylabel('transmitted data phase representation')
%title('Transmitted Data "O"')
%   2.  Perform QPSK modulation
qpsk_modulated_data = pskmod(data_source, M);

%   3.  Do IFFT on each block
%   Make the serial stream a matrix where each column represents a pre-OFDM
%   block (w/o cyclic prefixing)
%   First: Find out the number of colums that will exist after reshaping
num_cols=length(qpsk_modulated_data)/block_size;
data_matrix = reshape(qpsk_modulated_data, block_size, num_cols);

%   Second: Create empty matix to put the IFFT'd data
cp_start = block_size-cp_len;
cp_end = block_size;

%   Third: Operate columnwise & do CP
for i=1:num_cols,
    ifft_data_matrix(:,i) = ifft((data_matrix(:,i)),no_of_ifft_points);
    %   Compute and append Cyclic Prefix
    for j=1:cp_len,
       actual_cp(j,i) = ifft_data_matrix(j+cp_start,i);
    end
    %   Append the CP to the existing block to create the actual OFDM block
    ifft_data(:,i) = vertcat(actual_cp(:,i),ifft_data_matrix(:,i));
end
%   4.  Convert to serial stream for transmission
[rows_ifft_data cols_ifft_data]=size(ifft_data);
len_ofdm_data = rows_ifft_data*cols_ifft_data;
%   Actual OFDM signal to be transmitted
ofdm_signal = reshape(ifft_data, 1, len_ofdm_data);
%figure(3)
%plot(real(ofdm_signal)); xlabel('Time'); ylabel('Amplitude');
%title('OFDM Signal');grid on;

waveform = ofdm_signal;
waveformMod = waveform;
  
  %SNR = 21; %dBm
  %received = awgn(waveform, SNR);
    
  %s = 'device1'; % string key as a rule to generate input feature matrix
  binary = reshape(dec2bin(s, 8).'-'0',1,[]); %generate s key as binary vector
  idx2=0;
  
  signal = waveformMod;
  