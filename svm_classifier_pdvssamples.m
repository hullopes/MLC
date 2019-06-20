%importing data
baseUrl = '~/Documentos/MLC/Dados/';

QAM16a = importdata([baseUrl 'QAM/16QAM_SNR_0_dBm_8000_bits_500_amostras_offset_0.3.txt']);%
QAM16b = importdata([baseUrl 'QAM/16QAM_SNR_0_dBm_8000_bits_500_amostras_offset_0.txt']);%
QAM16c = importdata([baseUrl 'QAM/16QAM_SNR_0_dBm_8000_bits_500_amostras_offset_0.1.txt']);%
QAM16d = importdata([baseUrl 'QAM/16QAM_SNR_0_dBm_8000_bits_500_amostras_offset_0.2.txt']);%
QAM16e = importdata([baseUrl 'QAM/16QAM_SNR_24_dBm_8000_bits_500_amostras_offset_0.3.txt']);%
QAM16f = importdata([baseUrl 'QAM/16QAM_SNR_24_dBm_8000_bits_500_amostras_offset_0.txt']);%
QAM16g = importdata([baseUrl 'QAM/16QAM_SNR_24_dBm_8000_bits_500_amostras_offset_0.1.txt']);%
QAM16h = importdata([baseUrl 'QAM/16QAM_SNR_24_dBm_8000_bits_500_amostras_offset_0.2.txt']);%

QAM32a = importdata([baseUrl 'QAM/32QAM_SNR_0_dBm_10000_bits_500_amostras_offset_0.3.txt']);%
QAM32b = importdata([baseUrl 'QAM/32QAM_SNR_0_dBm_10000_bits_500_amostras_offset_0.txt']);%
QAM32c = importdata([baseUrl 'QAM/32QAM_SNR_0_dBm_10000_bits_500_amostras_offset_0.1.txt']);%
QAM32d = importdata([baseUrl 'QAM/32QAM_SNR_0_dBm_10000_bits_500_amostras_offset_0.2.txt']);%
QAM32e = importdata([baseUrl 'QAM/32QAM_SNR_24_dBm_10000_bits_500_amostras_offset_0.3.txt']);%
QAM32f = importdata([baseUrl 'QAM/32QAM_SNR_24_dBm_10000_bits_500_amostras_offset_0.txt']);%
QAM32g = importdata([baseUrl 'QAM/32QAM_SNR_24_dBm_10000_bits_500_amostras_offset_0.1.txt']);%
QAM32h = importdata([baseUrl 'QAM/32QAM_SNR_24_dBm_10000_bits_500_amostras_offset_0.2.txt']);%

QAM64a = importdata([baseUrl 'QAM/64QAM_SNR_0_dBm_12000_bits_500_amostras_offset_0.3.txt']);%
QAM64b = importdata([baseUrl 'QAM/64QAM_SNR_0_dBm_12000_bits_500_amostras_offset_0.txt']);%
QAM64c = importdata([baseUrl 'QAM/64QAM_SNR_0_dBm_12000_bits_500_amostras_offset_0.1.txt']);%
QAM64d = importdata([baseUrl 'QAM/64QAM_SNR_0_dBm_12000_bits_500_amostras_offset_0.2.txt']);%
QAM64e = importdata([baseUrl 'QAM/64QAM_SNR_24_dBm_12000_bits_500_amostras_offset_0.3.txt']);%
QAM64f = importdata([baseUrl 'QAM/64QAM_SNR_24_dBm_12000_bits_500_amostras_offset_0.txt']);%
QAM64g = importdata([baseUrl 'QAM/64QAM_SNR_24_dBm_12000_bits_500_amostras_offset_0.1.txt']);%
QAM64h = importdata([baseUrl 'QAM/64QAM_SNR_24_dBm_12000_bits_500_amostras_offset_0.2.txt']);%

QAM128a = importdata([baseUrl 'QAM/128QAM_SNR_0_dBm_14000_bits_500_amostras_offset_0.3.txt']);%
QAM128b = importdata([baseUrl 'QAM/128QAM_SNR_0_dBm_70000_bits_500_amostras_offset_0.txt']);%
QAM128c = importdata([baseUrl 'QAM/128QAM_SNR_0_dBm_14000_bits_500_amostras_offset_0.1.txt']);%
QAM128d = importdata([baseUrl 'QAM/128QAM_SNR_0_dBm_14000_bits_500_amostras_offset_0.2.txt']);%
QAM128e = importdata([baseUrl 'QAM/128QAM_SNR_24_dBm_14000_bits_500_amostras_offset_0.3.txt']);%
QAM128f = importdata([baseUrl 'QAM/128QAM_SNR_24_dBm_70000_bits_500_amostras_offset_0.txt']);%
QAM128g = importdata([baseUrl 'QAM/128QAM_SNR_24_dBm_14000_bits_500_amostras_offset_0.1.txt']);%
QAM128h = importdata([baseUrl 'QAM/128QAM_SNR_24_dBm_14000_bits_500_amostras_offset_0.2.txt']);%

QAM256a = importdata([baseUrl 'QAM/256QAM_SNR_0_dBm_16000_bits_500_amostras_offset_0.3.txt']);%
QAM256b = importdata([baseUrl 'QAM/256QAM_SNR_0_dBm_16000_bits_500_amostras_offset_0.txt']);%
QAM256c = importdata([baseUrl 'QAM/256QAM_SNR_0_dBm_16000_bits_500_amostras_offset_0.1.txt']);%
QAM256d = importdata([baseUrl 'QAM/256QAM_SNR_0_dBm_16000_bits_500_amostras_offset_0.2.txt']);%
QAM256e = importdata([baseUrl 'QAM/256QAM_SNR_24_dBm_16000_bits_500_amostras_offset_0.3.txt']);%
QAM256f = importdata([baseUrl 'QAM/256QAM_SNR_24_dBm_16000_bits_500_amostras_offset_0.txt']);%
QAM256g = importdata([baseUrl 'QAM/256QAM_SNR_24_dBm_16000_bits_500_amostras_offset_0.1.txt']);%
QAM256h = importdata([baseUrl 'QAM/256QAM_SNR_24_dBm_16000_bits_500_amostras_offset_0.2.txt']);%

w = warning ('off','all');
mod = {'16QAM' '32QAM' '64QAM' '128QAM' '256QAM'};
modM= [16 32 64 128 256];
numSamples = 10;%número de amostras do sinal
sym = 0;%número de símbolos de um sinal
pd=0;
tests = 100;
symbols = [10:10:50 100:100:1000];
Pd = zeros(length(mod),length(symbols));%Pd vector for each modulation type
PdS=Pd;
PdM = {{'11'},{'12'},{'13'},{'14'},{'15'},{'16'};
    {'21'},{'22'},{'23'},{'24'},{'25'},{'26'};
    {'31'},{'32'},{'33'},{'34'},{'35'},{'36'};
    {'41'},{'42'},{'43'},{'44'},{'45'},{'46'}};

for iii=1:length(mod)
    
    for ii=1:length(symbols)    
            sym = symbols(ii);
            X = [];
            y = {};
            for i=1:numSamples
                X(i,:) = QAM16a(i,1:sym);
                y(i) = mod(1);
            end
            for i=1:numSamples
                X(i+10,:) = QAM16b(i,1:sym);
                y(i+10) = mod(1);   
            end
            for i=1:numSamples
                X(i+20,:) = QAM16c(i,1:sym);
                y(i+20) = mod(1);   
            end
            for i=1:numSamples
                X(i+30,:) = QAM16d(i,1:sym);
                y(i+30) = mod(1);   
            end
            for i=1:numSamples
                X(i+40,:) = QAM16e(i,1:sym);
                y(i+40) = mod(1);   
            end
            for i=1:numSamples
                X(i+50,:) = QAM16f(i,1:sym);
                y(i+50) = mod(1);   
            end
            for i=1:numSamples
                X(i+60,:) = QAM16g(i,1:sym);
                y(i+60) = mod(1);   
            end
            for i=1:numSamples
                X(i+70,:) = QAM16h(i,1:sym);
                y(i+70) = mod(1);   
            end
            for i=1:numSamples
                X(i+80,:) = QAM32a(i,1:sym);
                y(i+80) = mod(2);
            end
            for i=1:numSamples
                X(i+90,:) = QAM32b(i,1:sym);
                y(i+90) = mod(2);
            end
            for i=1:numSamples
                X(i+100,:) = QAM32c(i,1:sym);
                y(i+100) = mod(2);
            end
            for i=1:numSamples
                X(i+110,:) = QAM32d(i,1:sym);
                y(i+110) = mod(2);
            end
            for i=1:numSamples
                X(i+120,:) = QAM32e(i,1:sym);
                y(i+120) = mod(2);
            end
            for i=1:numSamples
                X(i+130,:) = QAM32f(i,1:sym);
                y(i+130) = mod(2);
            end
            for i=1:numSamples
                X(i+140,:) = QAM32g(i,1:sym);
                y(i+140) = mod(2);
            end
            for i=1:numSamples
                X(i+150,:) = QAM32h(i,1:sym);
                y(i+150) = mod(2);
            end
            for i=1:numSamples
                X(i+160,:) = QAM64a(i,1:sym);
                y(i+160) = mod(3);
            end
            for i=1:numSamples
                X(i+170,:) = QAM64b(i,1:sym);
                y(i+170) = mod(3);
            end
            for i=1:numSamples
                X(i+180,:) = QAM64c(i,1:sym);
                y(i+180) = mod(3);
            end
            for i=1:numSamples
                X(i+190,:) = QAM64d(i,1:sym);
                y(i+190) = mod(3);
            end
            for i=1:numSamples
                X(i+200,:) = QAM64e(i,1:sym);
                y(i+200) = mod(3);
            end
            for i=1:numSamples
                X(i+210,:) = QAM64f(i,1:sym);
                y(i+210) = mod(3);
            end
            for i=1:numSamples
                X(i+220,:) = QAM64g(i,1:sym);
                y(i+220) = mod(3);
            end
            for i=1:numSamples
                X(i+230,:) = QAM64h(i,1:sym);
                y(i+230) = mod(3);
            end
            for i=1:numSamples
                X(i+240,:) = QAM128a(i,1:sym);
                y(i+240) = mod(4);
            end
            for i=1:numSamples
                X(i+250,:) = QAM128b(i,1:sym);
                y(i+250) = mod(4);
            end
            for i=1:numSamples
                X(i+260,:) = QAM128c(i,1:sym);
                y(i+260) = mod(4);
            end
            for i=1:numSamples
                X(i+270,:) = QAM128d(i,1:sym);
                y(i+270) = mod(4);
            end
            for i=1:numSamples
                X(i+280,:) = QAM128e(i,1:sym);
                y(i+280) = mod(4);
            end
            for i=1:numSamples
                X(i+290,:) = QAM128f(i,1:sym);
                y(i+290) = mod(4);
            end
            for i=1:numSamples
                X(i+300,:) = QAM128g(i,1:sym);
                y(i+300) = mod(4);
            end
            for i=1:numSamples
                X(i+310,:) = QAM128h(i,1:sym);
                y(i+310) = mod(4);
            end
            for i=1:numSamples
                X(i+320,:) = QAM256a(i,1:sym);
                y(i+320) = mod(5);
            end
            for i=1:numSamples
                X(i+330,:) = QAM256b(i,1:sym);
                y(i+330) = mod(5);
            end
            for i=1:numSamples
                X(i+340,:) = QAM256c(i,1:sym);
                y(i+340) = mod(5);
            end
            for i=1:numSamples
                X(i+350,:) = QAM256d(i,1:sym);
                y(i+350) = mod(5);
            end
            for i=1:numSamples
                X(i+360,:) = QAM256e(i,1:sym);
                y(i+360) = mod(5);
            end
            for i=1:numSamples
                X(i+370,:) = QAM256f(i,1:sym);
                y(i+370) = mod(5);
            end
            for i=1:numSamples
                X(i+380,:) = QAM256g(i,1:sym);
                y(i+380) = mod(5);
            end
            for i=1:numSamples
                X(i+390,:) = QAM256h(i,1:sym);
                y(i+390) = mod(5);
            end

            Mdl = fitcecoc(X,y);

            pd = 0;
            for i=1:1:tests
                disp(['Calculando ' mod(iii) ' com ' num2str(symbols(ii)) ' símbolos']);
                [puro,recebido] = gerador_ModulationQAMpuro(modM(iii),14000,0,0);
                predicted = predict(Mdl,real(recebido(1:sym)'));
                if(ismember(predicted,mod(iii))) 
                    pd=pd+1;
                end    
            end
            Pd(iii,ii) = pd;
            PdM(iii,ii) = mod(iii);
            PdS(iii,ii) = sym;
    end

end

figure;
leg = {'1','2','3','4','5'};
for i=1:length(Pd(:,1))
    plot(symbols,Pd(i,:)/tests);  
    hold on;
    leg{i} = [num2str(modM(i)) ' QAM'];
end    
hold off;
title('P_d vs Signal Samples');
xlabel('Samples - Real part'); 
ylabel('P_d'); 
grid on;
legend(leg);

