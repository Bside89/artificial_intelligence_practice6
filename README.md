*********************************************
ATIVIDADE PR�TICA 6 - INTELIG�NCIA ARTIFICIAL
*********************************************

AUTOR(ES):
- Bruno Santos, graduando em Engenharia de Computa��o pela Universidade Federal do Mato Grosso.


AVISO(S):

- N�O ALTERE o c�digo de nenhum dos arquivos, EXCETO os valores contidos de expoentes na amostra 'n' para valores de C do arquivo experiment.m (linha 20). Neste caso, altere cuidadosamente seus valores, sem comprometer a funcionalidade do c�digo.


INTRODU��O:

Este experimento implementa um classificador SVM para classifica��o de imagens de vagas de estacionamento, onde o modelo deve classificar corretamente se tais vagas est�o ocupadas por algum ve�culo ou n�o.
Foi utilizada a interface libsvm para implementa��o do modelo, e o objetivo real do experimento foi obter qual o melhor par�metro C do SVM tal que a acur�cia seja relativamente alta.


M�TODO:

Para obter o melhor par�metro C, foi utilizada a t�cnica de valida��o cruzada para avalia��o real de acur�cia do modelo. A partir disto, diversos valores de C s�o calculados. 

O script contendo tal experimento � o arquivo experiment.m

Como, em geral, sabe-se que tais valores de C s�o n�meros bem grandes, foi utilizado como amostra do experimento valores exponenciais de base 2 (exemplo: 2^5, 2^10, 2^1000 etc.). Mais valores podem ser adicionados a tal amostra e analisados, entretanto, devido ao tempo elevado de execu��o do algorito, uma amostra padr�o contendo 5 valores de n est� contida no script.

A f�rmula de C � dada por pot�ncias de base 2: C = 2^n, onde n � a amostra contendo valores de expoentes, e que pode ser alterada pelo usu�rio, se desejar.