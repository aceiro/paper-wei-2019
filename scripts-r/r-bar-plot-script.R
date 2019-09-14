# -------------------------------------------------------------------------
# Script em R para representar graficamente os dados de avaliação 
# dos estudantes - vide artigo 
# Autor: Erik Aceiro Antonio
# ------------------------------------------------------------------------
# Ref.1 -- https://www.r-graph-gallery.com/209-the-options-of-barplot/
# Ref.2 -- https://www.r-bloggers.com/box-plot-with-r-tutorial/


Q1 <- c(0,0,1,2,8)

Q2 <- c(0,0,1,3,7)

Q3 <- c(0,0,1,2,8)

Q4 <- c(0,1,1,2,7)

Q5 <- c(0,0,2,1,8)

Q6 <- c(0,0,1,2,8)


layout(matrix(c(1,2,3,4,5,6,7,7,7), 3, 3, byrow = TRUE))

names(Q1) <- c("Ruim", "Razoável", "Bom", "Muito Bom", "Excelente")
names(Q2) <- c("Ruim", "Razoável", "Bom", "Muito Bom", "Excelente")
names(Q3) <- c("Ruim", "Razoável", "Bom", "Muito Bom", "Excelente")
names(Q4) <- c("Ruim", "Razoável", "Bom", "Muito Bom", "Excelente")
names(Q5) <- c("Ruim", "Razoável", "Bom", "Muito Bom", "Excelente")
names(Q6) <- c("Ruim", "Razoável", "Bom", "Muito Bom", "Excelente")

barplot(Q1, xlab = "Questão Q1 (a)", ylab = "Frequência", font.lab=2, cex.lab = 1.25 )
barplot(Q2, xlab = "Questão Q2 (b)", ylab = "Frequência", font.lab=2, cex.lab = 1.25 )
barplot(Q3, xlab = "Questão Q3 (c)", ylab = "Frequência", font.lab=2, cex.lab = 1.25 )
barplot(Q4, xlab = "Questão Q4 (d)", ylab = "Frequência", font.lab=2, cex.lab = 1.25 )
barplot(Q5, xlab = "Questão Q5 (e)", ylab = "Frequência", font.lab=2, cex.lab = 1.25 )
barplot(Q6, xlab = "Questão Q6 (f)", ylab = "Frequência", font.lab=2, cex.lab = 1.25 )


# Pie Chart with Percentages
slices <- c(8, 1, 1, 1) 
lbls <- c("Simplicidade", "Complexo", "Rápido", "Confuso")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=rainbow(length(lbls)), main="Atributos de Usuabilidade")
mtext('Questão Q7 (g)', side=1, font=2, cex = .85)





