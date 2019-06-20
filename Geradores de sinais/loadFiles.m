function [loadedX, loadedY] = loadFiles(M,SNR,n,amostras,modulations)
    
    loadedX = []; loadedY = {};
    for i=1:length(M)
        for ii=1:length(SNR)
            snr = SNR(ii);
            m=M(i);
            nn = log2(m)*n;
            file=['~/Documentos/MLC/Dados/QAM2/' num2str(m) 'QAM_SNR_' num2str(snr) '_dBm_' num2str(nn) '_bits_' num2str(amostras)  '.txt'];
            disp(file);
            x = csvread(file);
            for iii=1:length(x(:,1))
                lY(iii) = modulations(i);
            end
            loadedY = horzcat(loadedY,lY);
            loadedX = vertcat(loadedX,x);
        end
     end    
end

