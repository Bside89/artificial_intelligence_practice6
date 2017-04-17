*********************************************
ATIVIDADE PRÁTICA 6 - INTELIGÊNCIA ARTIFICIAL
*********************************************

AUTOR(ES):
- Bruno Santos, graduando em Engenharia de Computação pela Universidade Federal do Mato Grosso.


AVISO(S):

- NÃO ALTERE o código de nenhum dos arquivos, EXCETO os valores contidos de expoentes na amostra 'n' para valores de C do arquivo experiment.m (linha 20). Neste caso, altere cuidadosamente seus valores, sem comprometer a funcionalidade do código.


INTRODUÇÃO:

Este experimento implementa um classificador SVM para classificação de imagens de vagas de estacionamento, onde o modelo deve classificar corretamente se tais vagas estão ocupadas por algum veículo ou não.
Foi utilizada a interface libsvm para implementação do modelo, e o objetivo real do experimento foi obter qual o melhor parâmetro C do SVM tal que a acurácia seja relativamente alta.


MÉTODO:

Para obter o melhor parâmetro C, foi utilizada a técnica de validação cruzada para avaliação real de acurácia do modelo. A partir disto, diversos valores de C são calculados. 

O script contendo tal experimento é o arquivo experiment.m

Como, em geral, sabe-se que tais valores de C são números bem grandes, foi utilizado como amostra do experimento valores exponenciais de base 2 (exemplo: 2^5, 2^10, 2^1000 etc.). Mais valores podem ser adicionados a tal amostra e analisados, entretanto, devido ao tempo elevado de execução do algorito, uma amostra padrão contendo 5 valores de n está contida no script.

A fórmula de C é dada por potências de base 2: C = 2^n, onde n é a amostra contendo valores de expoentes, e que pode ser alterada pelo usuário, se desejar.