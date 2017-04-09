classdef kfcv_partition
    %KFCV_PARTITION Partição de dados com k-fold cross validation (KFCV)
    %   Faz a partição de dados de um modelo utilizando validação cruzada
    %   k-fold.
    %   Dispensa o uso da classe cvpartition, disponível em toolbox do
    %   MATLAB. Assim, é possível utilizar esta classe no GNU/Octave.
    
    properties
        nObs;       % Número de observações
        k = 10;     % Número de partições
        I;          % Matriz de índices
    end
    
    methods (Access = public)
        
        function this = my_cvpartition(Y, k)
            
            assert(k > 0, 'k must be positive integer.');
            assert(size(Y, 1) == 1 || size(Y, 2) == 1, ...
                'Grouping variable must be a vector or a character array.');
            
            if size(Y, 1) == 1,
                this.nObs = size(Y, 2);
            else
                this.nObs = size(Y, 1);
            end
            
            n = floor(this.nObs/k);
            this.k = floor(3);
            this.I = zeros(m, k);
        end
        
    end
    
end

