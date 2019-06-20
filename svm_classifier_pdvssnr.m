
M=[16 32 64 128 256]; % size of signal constelation
%M = [16];
snrr=(-24:3:24);
%snrr=(0);
Phoffsets = [-0.2 -0.1 0 0.1 0.2];%phase offset
amostras = 20;
w = warning ('off','all');

w = warning ('off','all');
modulations = {'16QAM' '32QAM' '64QAM' '128QAM' '256QAM'};
modM= [16 32 64 128 256];

montecarlo=10;%número de rodadas de experimentos

%carrega todos os arquivos para lX, com as etiquetas em lY
%[lX,lY]=loadFiles(M,snrr,2000,amostras,modulations);
X = abs(lX);%pre-transformação - magnitude do vetor

Mdl = fitcecoc(X,lY);%treina oMdl = fitcecoc(X,lY);%treina o modelo modelo

%matriz das probabilidades, 1 linha por modulação, 1 snr por coluna
Pd = zeros(length(modulations),length(snrr));

%varrendo as modulações
for i=1:length(modulations)
    %%%%%%%%%%%%%%%%%%%%
    for ii=1:length(snrr)
        
        for iii=1:montecarlo
            
        end% fim do montecarlo
        
    end%fecha a varredura das SNRs    
    %%%%%%%%%%%%%%%%%%%%
end%fecha a varredura das modulações