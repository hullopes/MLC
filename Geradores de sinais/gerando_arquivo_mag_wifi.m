
%ArrSNR = [-3 0 3 6 9 12 15 18 21];
ArrSNR = [-6];

nsamples = 50; %control generation of device signals

%varrendo para cada SNR do array
for iSnr=1:1:length(ArrSNR)
    SNR = ArrSNR(iSnr);

            fileID = fopen(['~/Documentos/MLC/Dados/ofdm/received_samples_-6dB_SNR.txt'],'w');

            for idx = 1:1:nsamples     
                disp(['Gerando sinal  ->' num2str(idx) '- SNR ' num2str(SNR)]);
                
                %[ofdm_signal,receivedSNR] = gerador_sinal_wifi(SNR);
                [~,receivedSNR] = gerador_sinal_wifi(SNR);

                for ii = 1:length(receivedSNR)
                    fprintf(fileID, '%s', receivedSNR(ii));
                    if(ii<length(receivedSNR))
                        fprintf(fileID,',');
                    end    
                end   
                fprintf(fileID,'\n');
            end    
            fclose(fileID);
           
end    