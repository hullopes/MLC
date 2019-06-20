%nova geração de sinal, sem decimar muito
%function gerador de sinal zigbee
%generate a received signal (with awgn noise) in modulation uset by ZigBee
%protocols
%output [spectrum_magSd,spectrum_mag] 
% spectrum_magSd is the calculed magnitude of dicimated signal
% spectrum_mag is the calculed magnitude of fft of received signal (with
% awgn noise)
%input fc - Carrier frequency in MHz
% fcStr - fc in string ['2450 MHz' '780 MHz' '915 MHz' '868 MHz']
% featureP - feature array generator value 1 < featureP < 2
% SNR = signal to noise ratio of received signal
% s = string keyword to generate feature array

function [ofdm_signal,receivedSNR] = gerador_sinal_wifi(SNR)

%clc;
%clear all;

spc = 4;                            % samples per chip
msgLen = 8*120;                     % length in bits
msg = 'This is a TCP packet. Preamble TCP Packet. Message 123456. Wifi 2400 MHz usando BPSK. Wifi 802.11 ag, PPDU or MPDU with preamble.';
binary = reshape(dec2bin(msg, 8).'-'0',1,[]);
message = binary;
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
  
  %SNR = 21; %dBm
  receivedSNR = awgn(waveform, SNR);
  
    
  
  
  