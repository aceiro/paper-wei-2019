# ------------------------------------------------------------------------
# Plota os valores de KLOCK via CLC usando LinearPlot
# 
# Autor: Erik Aceiro Antonio
# ------------------------------------------------------------------------

library(plotly)

languages <- c('PHP', 'HTML', 'JS', 'CSS', 'SQL', 'JSON', 'Markdown','YAML', 'XML', 'Shell')


version.v1 <- c(16980, 2870, 1174,  957,  0,  71,    40,  37, 18, 0)
version.v2 <- c(21301, 2590, 1286, 1091, 1354, 71,   50,  37, 18, 5)
version.v3 <- c(53847, 8121, 3966, 2129,1388, 207,  258, 52, 172, 5)
version.v4 <- c(54632, 8262, 3973, 2108,1388, 207,  272, 52, 412, 5)

data <- data.frame(languages, version.v4, version.v3, version.v2, version.v1)

#The default order will be alphabetized unless specified as below:
data$languages <- factor(data$languages, levels = data[["languages"]])



p <- plot_ly(data, x = ~languages, y = ~version.v4, name = 'Versão v4', type = 'scatter', mode = 'lines',
             line = list(color = 'rgb(205, 12, 24)', width = 2)) %>%
  
  add_trace(y = ~version.v3, name = 'Versão v3', line = list(color = 'rgb(205, 12, 24)', width = 4, dash = 'dot')) %>%
  add_trace(y = ~version.v2, name = 'Versão v2', line = list(color = 'rgb(205, 12, 24)', width = 2, dash = 'dash'))  %>%
  add_trace(y = ~version.v1, name = 'Versão v1', line = list(color = 'rgb(205, 12, 24)', width = 1, dash = 'dot')) %>%
  layout(
         xaxis = list(title = "Linguagem"),
         yaxis = list (title = "KLoC/Code"))

pdf(file="figure.pdf")

plot_ly(data, x = ~languages, y = ~version.v4, name = 'Versão v4', type = 'scatter', mode = 'lines',
        line = list(color = 'rgb(205, 12, 24)', width = 2)) %>%
  
  add_trace(y = ~version.v3, name = 'Versão v3', line = list(color = 'rgb(205, 12, 24)', width = 4, dash = 'dot')) %>%
  add_trace(y = ~version.v2, name = 'Versão v2', line = list(color = 'rgb(205, 12, 24)', width = 2, dash = 'dash'))  %>%
  add_trace(y = ~version.v1, name = 'Versão v1', line = list(color = 'rgb(205, 12, 24)', width = 1, dash = 'dot')) %>%
  layout(
    xaxis = list(title = "Linguagem"),
    yaxis = list (title = "KLoC/Code"))


dev.off()

p

