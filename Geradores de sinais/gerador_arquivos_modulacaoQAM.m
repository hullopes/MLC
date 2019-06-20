%generate a ramdom binary data stream
M=[16 32 64 128 256]; % size of signal constelation
%M = [16];
snrr=(-24:3:24);
%snrr=(0);
Phoffsets = [-0.2 -0.1 0 0.1 0.2];%phase offset
amostras = 20;
w = warning ('off','all');


%varrendo as razões de constelações QAM
for mInd = 1:length(M)
    
    signalS = 2000;%número de amostras do sinal
    m=M(mInd);%pegando a modulação atual
    k = log2(m); %number of bits per symbol
    n = k*signalS;%number of bits to process       
    
        for ind = 1:length(snrr)
            snr = snrr(ind);
            file=['~/Documentos/MLC/Dados/QAM2/' num2str(m) 'QAM_SNR_' num2str(snr) '_dBm_' num2str(n) '_bits_' num2str(amostras)  '.txt'];
            %criando a matriz para guardar todos os sinais gerados para
            %esta snr
            Sinais = zeros(amostras*length(Phoffsets),signalS);
            count = 1;
            for pInd = 1:length(Phoffsets)
        
                pho = Phoffsets(pInd);%pegando o offset de fase atual
                
                for c = count:1:amostras*length(Phoffsets)
        
                    disp(['M ' num2str(m) '- pho ' num2str(pho) '- SNR ' num2str(ind) ' de ' num2str(length(snrr))  '-Gerando sinal ' num2str(m) 'QAM ' num2str(c) ' de ' num2str(amostras*length(Phoffsets))]);

                    %create a binary data stream as a column vector
                    %rng default %use default ramdom number generator
                    dataIn = randi([0 1],n,1); %generate vector of binary data

                    %perform a bit-to-symbol mapping
                    dataInMatrix = reshape(dataIn,length(dataIn)/k,k); % reshape data into binary k-tubples, k=log2(M)
                    dataSymbolsIn = bi2de(dataInMatrix); % Convert to integers

                    %disp(dataIn(1:2)');

                    %Modulate using 16-QAM
                    %apply modulation
                    [puro,recebido] = gerador_ModulationQAMpuro(m,n,snr,pho);
                    Sinais(c,:) = recebido;  
                
                end
            end
            csvwrite(file,Sinais);%salvando no arquivo em CSV
        end    
    
    
    
end 
