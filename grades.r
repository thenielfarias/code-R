aluno_notas<-function(z)
{
 Nomes<-as.character()
 Prova1<-as.numeric()
 Prova2<-as.numeric()
 Prova3<-as.numeric()
 MediaEscolar<-as.numeric()
 Situação<-as.character()

  alunos<-data.frame(Nomes,Prova1,Prova2,Prova3,MediaEscolar,Situação)
  alunos$Situação<-as.character(alunos$Situação)
  alunos$Nomes<-as.character(alunos$Nomes)

print("1 - Cadastrar aluno")
print("2 - Ver notas")
print("3 - Ver média e situação")

#Recebe notas do aluno i nos 3 exercícios
print("Cadastro de Alunos --> Digite 1")
x<-scan(n=1)
i<-1
while(x==1)
{

      print("Nome:")
      nome<-scan(what=character(),nmax=1)
  
      print("Nota 1:")
      Prova1<-scan(n=1)

      print("Nota 2:")
      Prova2<-scan(n=1)
  
      print("Nota 3:")
      Prova3<-scan(n=1)
   
      notas<-c(Prova1,Prova2,Prova3)
  
          for(j in 1:length(notas))
                 {
                      cat("Nota na Prova",j,"-->")
                      cat("",notas[j],"\n")
                 }

          MediaEscolar<-mean(notas)
          cat("Média do Aluno:",MediaEscolar,"\n")

       if (MediaEscolar>=7)
            {
                 print("Aluno Aprovado")
         Situação<-"Aprovado"
            } 

       if (MediaEscolar<7)
            {
                 print("Aluno Reprovado")
         Situação<-"Reprovado"
            }

          
          alunos[i,]<-c(nome,Prova1,Prova2,Prova3,MediaEscolar,Situação)
          
       print("Cadastrar outro aluno?   Sim-> 1    Não -> 0")
       x<-scan(n=1)
       
i<-i+1
} #Fim do While

print("Obrigado")
print("Situação aluno:")

return(alunos)

}#fim da função

aluno_notas()