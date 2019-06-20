spc = 4;%symbols per chip/samples per symbol
SNR = 12;%dB
channel = comm.AWGNChannel('NoiseMethod','Signal to noise ratio (SNR)','SNR',SNR);
amostras = 1000;

fileID = fopen(['~/Documentos/MLC/Dados/oqpsk/oqpsk2450MHz_SNR_' num2str(SNR) '_dBm_' num2str(64) '_bits_' num2str(amostras) '_amostras'  '.txt'],'w');
    

for count = 1:1:amostras
    
    disp(['Gerando sinal OQPSK ' num2str(count) ' de ' num2str(amostras)]);
    dataIn = randi([0 1],64,1); %generate vector of binary data

    sinal =lrwpan.PHYGeneratorOQPSK(dataIn,spc,'2450 MHz');
    rxsinal = channel(sinal);%%recebendo o sinal
    %scatterplot(sinal);
    for ii = 1:length(rxsinal)
            fprintf(fileID, '%s', rxsinal(ii));
            if(ii<length(rxsinal))
                fprintf(fileID,',');
            end    
    end   
    fprintf(fileID,'\n');
    
end
fclose(fileID);

%criando com pacote comm


%oqpskmod = comm.OQPSKModulator('BitInput',true,'SamplesPerSymbol',spc);
%oqpskdemod=comm.OQPSKDemodulator('BitOutput',true);
%channel = comm.AWGNChannel('EbNo',4,'BitsPerSymbol',2);

%creating an erro rate calculator
%to account for he delay between the modulator and emodulato, set property
%to 2
%errorRate =comm.ErrorRate('ReceiveDelay',2);
%sinal2 = oqpskmod(dataIn);


%   rate = 4e6;
%   modulator = comm.OQPSKModulator('BitInput', true, 'PulseShape', 'Half sine', ...
%                                   'SamplesPerSymbol', sps, 'SymbolMapping', [3 2 0 1]);
%   waveform = modulator(bits);     % joint oqpsk modulation and filtering