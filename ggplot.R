setwd('D:\\bases de dados curso')
getwd()
dados <- read.csv('credit_data.csv')

colnames(dados) <- c('Id', 'Salário Anual', 'Idade', 'Empréstimo', 'Default')


complete_cases <- dados[complete.cases(dados),]
complete_cases

dados_prontos <- subset(complete_cases, select = -c(Default))

rm(complete_cases, dados_sem_na, dados)



library(ggplot2)

hist(dados_prontos$`Salário Anual`, xlab = 'Salário anual', ylab = 'Frequência')

dados_prontos <- dados_prontos[!dados_prontos$Idade < 15,] 
#remove idades menores que 15 anos


rm(dados_teste)

hist(dados_teste$Idade)


summary(dados_prontos$`Salário Anual`)
sd(dados_prontos$`Salário Anual`)

ggplot(dados_prontos, aes(sample=`Salário Anual`))+
  stat_qq(shape=21, size = 1, col = 'red', fill = 'blue')+
  stat_qq_line()

#muitos dados fora da reta, portanto, os dados não pertencem à uma distribuiçao normal


