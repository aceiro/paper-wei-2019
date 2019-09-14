# ------------------------------------------------------------------------
# Calcula o valor de Cronbach’s alpha
# 
# Autor: Erik Aceiro Antonio
# ------------------------------------------------------------------------

# 1. As questões Q1-Q6 foram organizadas segundo a escala de Likert
# 2. Para realizar a análise estátistica foram contados (i.e., totalizado a quantidade)
#    de pontos em cada alternativa
# 3. Como os dados na escala de Likert são 'não normalizados', então a análise é feita
#    com base em testes não-paramétricos
# 4. Como o estudo de viabilidade não envolveu um grupo de tratamento para o experimento
#    optamos por realizar uma avaliação estatística em termos da média
#    e também em relação a consistência interna do questionário.
#    Nesse caso, usamos o teste de Cronbach’s alpha

# Refs
# Ref.1 -- Likert https://pareonline.net/getvn.asp?v=15&n=11
# Ref.2 -- Cronbach Alpha https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3886444/pdf/i1949-8357-5-4-541.pdf
# Ref.3 -- https://mattchoward.com/calculating-cronbachs-alpha-in-r/
# Ref.4 -- https://mattchoward.com/introduction-to-cronbachs-alpha/
# Ref.5 -- EP + Cronbach Alfa - https://seer.ufrgs.br/index.php/ProdutoProducao/article/viewFile/9321/8252
# Ref.6 -- http://soniavieira.blogspot.com/2015/10/alfa-de-cronbach.html

#   
# A Tabela a seguir ilustra os dados de cada questão e o grupo avaliado - G1

# NOTA: como não houve uma comparação com outro grupo, por exemplo, um segundo grupo 
# G2, não foi possível aplicar os testes não paramétricos (t-test) e então 
# optouse por exemplor essencialmente a consistencia do formulário e os resultados
# em torno da média.
# Cronbach’s alpha pode ser calculado para uma amostra simples.
# Valores de Cronbach’s alpha tipicamente variam entre 0 até 1.
# Cronbach’s alpha ~1.0 indica alta consistência interna entre a escala definida.
# i.e., valores altos de alpha indicam confiabilidade. Um valor de 1.0 indica
# que todas as variabilidades no teste de escore são verdaderes (i.e., confiabilidade de variancia)
# sem erro em medidas. Por outro lado, um valor de 0.0 indica um falso escore (i.e., sem confiabilidade na variancia)
# Cronbach’s alpha can be calculated using a single sample.
# Vale descatar que o coefieficiente alfa, sugere uma métrica de consistência mas 
# não uma homogeneidade ou unidimencionalidade. 

# 
# Q<-c("Ruim", "Razoável", "Bom", "Muito Bom", "Excelente")       
# 
#                            G1
#-------------------------------------------------------
# Categoria       | Q1 | Q2 | Q3 | Q4 | Q5 | Q6 | Total
#-------------------------------------------------------  
# "Ruim"          | 0  | 0  | 0  | 0  | 0  | 0  |  0   |
# "Razoável"      | 0  | 0  | 0  | 1  | 0  | 0  |  1   |
# "Bom"           | 1  | 1  | 1  | 1  | 2  | 1  |  7   |
# "Muito Bom"     | 2  | 3  | 2  | 2  | 1  | 2  |  12  |
# "Excelente"     | 8  | 7  | 8  | 7  | 8  | 8  |  46  |
#------------------------------------------------------
#  Total          | 11 | 11 | 11 | 11 | 11 | 11 |  66  |

Q1 <- c(0,0,1,2,8)   
Q2 <- c(0,0,1,3,7) 
Q3 <- c(0,0,1,2,8) 
Q4 <- c(0,1,1,2,7) 
Q5 <- c(0,0,2,1,8) 
Q6 <- c(0,0,1,2,8) 



summary(Q1)
summary(Q2)
summary(Q3)
summary(Q4)
summary(Q5)
summary(Q6)


setwd(".")
table.data <- read.csv('contingency-table-questions.csv', sep=';')
head(table.data);


# carregamento dos valores das questões em uma tabela de contingencia
Q1 <- c(3,4,4,5,5,5,5,5,5,5,5)   
Q2 <- c(3,4,4,4,5,5,5,5,5,5,5) 
Q3 <- c(3,4,4,5,5,5,5,5,5,5,5)    
Q4 <- c(2,3,4,4,5,5,5,5,5,5,5) 
Q5 <- c(3,3,4,5,5,5,5,5,5,5,5)   
Q6 <- c(3,4,4,5,5,5,5,5,5,5,5) 

data.table.contx <-data.frame(Q1,Q2,Q3,Q4,Q5,Q6)
data.table.contx

# calcula o coeficiente alfa
library(psych) 
alpha(data.table.contx,check.keys=TRUE)

