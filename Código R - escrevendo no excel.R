# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                               #  
#       Job: Escrendo em c�lulas espec�ficas no excel           #
#                                                               #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# Instalando e carregando o pacote:
  # install.packages('XLConnect', 
  #                     dependencies=TRUE, 
  #                     repos='http://cran.rstudio.com/')
  library('XLConnect')

# Localiza��o do arquivo:  
  wd<-'C:/Users/phohberg/Desktop/CP/Apoio PPT'
  setwd(wd)

# Lendo o arquivo:
  wb <- loadWorkbook("Auxiliar SMS 2019 - C�pia.xlsx", create = F)
  # createSheet(wb, name = "Sheet1")

x<-c(1,22,333,4444)

# here, you can set the startRow and startCol. Col A = 1, B = 2,...
  setStyleAction(wb,XLC$"STYLE_ACTION.NONE") # serve para n�o fazer um overwrite da formata��o atual.
  writeWorksheet(wb,x,"fev19",startRow = 37, startCol = 17, 
                 header = F)

# automatically adjust column width
  setColumnWidth(wb, sheet = "fev19", column = 10, width = -1)
  saveWorkbook(wb)
