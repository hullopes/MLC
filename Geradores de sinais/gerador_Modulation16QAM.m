%generate a ramdom binary data stream
M=128; % size of signal constelation
k = log2(M); %number of bits per symbol
%n = 14000; %number of bits to process
n = k*2000;
snrr=[-24:3:24];

pho = 0.3; %phase offset
amostras = 500;
w = warning ('off','all');
for ind = 1:length(snrr)
    snr = snrr(ind);
    fileID = fopen(['~/Documentos/MLC/Dados/QAM/' num2str(M) 'QAM_SNR_' num2str(snr) '_dBm_' num2str(n) '_bits_' num2str(amostras) '_amostras_offset_' num2str(pho)  '.txt'],'w');
    
    for count = 1:1:amostras
        
        disp([num2str(ind) ' de ' num2str(size(snrr))  '-Gerando sinal ' num2str(M) 'QAM ' num2str(count) ' de ' num2str(amostras)]);

            %create a binary data stream as a column vector
            %rng default %use default ramdom number generator
            dataIn = randi([0 1],n,1); %generate vector of binary data

            %perform a bit-to-symbol mapping
            dataInMatrix = reshape(dataIn,length(dataIn)/k,k); % reshape data into binary k-tubples, k=log2(M)
            dataSymbolsIn = bi2de(dataInMatrix); % Convert to integers
            
            %disp(dataIn(1:2)');

            %Modulate using 16-QAM
            %apply modulation
            dataMod = qammod(dataSymbolsIn,M,pho,'bin'); %Binary coding, phase offset = pho
            %dataModG= qammod(dataSymbolsIn,M); %gray coding, phase offset = 0;

            rxsinal = awgn(dataMod,snr, 'measured');
            %disp(rxsinal(1:1));
            %disp(dataMod(1:1));
            for ii = 1:length(rxsinal)
                if(ii>1000) break;
                end
                fprintf(fileID, '%s', rxsinal(ii));
                if(ii<length(rxsinal))
                    fprintf(fileID,',');
                end    
            end   
            fprintf(fileID,'\n');
    end
end
