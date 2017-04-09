classdef kfcv_partition
    %KFCV_PARTITION Parti��o de dados com k-fold cross validation (KFCV)
    %   Faz a parti��o de dados de um modelo utilizando valida��o cruzada
    %   k-fold.
    %   Dispensa o uso da classe cvpartition, dispon�vel em toolbox do
    %   MATLAB. Assim, � poss�vel utilizar esta classe no GNU/Octave.
    
    properties
        nObs;       % N�mero de observa��es
        k = 10;     % N�mero de parti��es
        I;          % Matriz de �ndices
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

