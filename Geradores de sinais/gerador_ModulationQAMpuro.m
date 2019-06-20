function [puro, recebido] = gerador_ModulationQAMpuro(M,n,snr,pho)
%generate a ramdom binary data stream
%M=128; % size of signal constelation
k = log2(M); %number of bits per symbol
%n = k*1000*2;
%n = 14000; %number of bits to process
%snrr=[12];
%pho = 0; %phase offset

            dataIn = randi([0 1],n,1); %generate vector of binary data

            %perform a bit-to-symbol mapping
            dataInMatrix = reshape(dataIn,length(dataIn)/k,k); % reshape data into binary k-tubples, k=log2(M)
            dataSymbolsIn = bi2de(dataInMatrix); % Convert to integers
            
            %Modulate using 16-QAM
            %apply modulation
            puro = qammod(dataSymbolsIn,M,pho,'bin'); %Binary coding, phase offset = pho
            %dataModG= qammod(dataSymbolsIn,M); %gray coding, phase offset = 0;

            recebido = awgn(puro,snr, 'measured');
            
end
