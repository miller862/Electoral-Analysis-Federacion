library(xlsx)
library(readxl)
library(tidyverse)

#esto es codigo viejo
'''
mesa_3190 <- read.xlsx("data/mesa_3190.xls",1) %>% 
  .[-c(1:4),]

colnames(mesa_3190)<- mesa_3190[1,]

mesa3190 <- mesa3190[-c(1),] #%>% 
  #select(-MESA,-NRO)



mesa_3190<- mesa_3190 %>% 
  pivot_longer(cols =`PRESIDENTE Y VICE             `:`CONCEJALES MUNICIPALES        `,
               names_to= "CARGOS",
               values_to= "VOTOS")

mesa_3190$MESA <- as.double(mesa_3190$MESA)
'''
#creo una funcion par alimpiar todas las mesas

limpiar <- function(DF) {
  
  colnames(DF)<- DF[1,]
  DF<- DF[-c(1),]
  DF<-DF%>% pivot_longer(cols =`PRESIDENTE Y VICE`:`CONCEJALES MUNICIPALES`,
                     names_to= "CARGOS",
                     values_to= "VOTOS")
  
  names(DF)[1] <- "MESA"
  
  
  return(DF)

}

#voy  crear una funcion que lea los excels y luego los paso por la funcion de limpiar
#la funcion va a requerir una lista con los numeros de mesas
mesa_numbers <- list(3190,3191,3192,3193,3194,3195,3196,3197,3198,3199,3200,3201,3202,3203,3204,3205,3206,3207,3208,3209,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232,3233,3234,3235,3236)

##funcion de lectura
read_mesa_files <- function(mesa_numbers) {
  # Create a list to store the data frames
  mesa_dfs <- list()
  
  # Loop through the mesa numbers
  for (mesa_number in mesa_numbers) {
    # Create a file name
    file_name <- paste0("data/mesa_", mesa_number, ".xls")
    
    # Read the Excel file
    mesa_df <- read_excel(file_name, range = "A13:K24")
    
    # Add a column named MESA
    MESA_col=rep(mesa_number)
    #mesa_df$MESA <- mesa_number
    mesa_df <- cbind(MESA = MESA_col,    # Append new column to front of data
                            mesa_df)
    # Save the data frame in the list
    mesa_dfs[[mesa_number]] <- mesa_df
  }
  # Return the list of data frames
  return(mesa_dfs)
}

#aplico la funcion de lectura
mesa_dfs <-read_mesa_files(mesa_numbers)

#guardo cada mesa
mesa_3190 <- mesa_dfs[[3190]]
mesa_3191 <- mesa_dfs[[3191]]
mesa_3192 <- mesa_dfs[[3192]]
mesa_3193 <- mesa_dfs[[3193]]
mesa_3194 <- mesa_dfs[[3194]]
mesa_3195 <- mesa_dfs[[3195]]
mesa_3196 <- mesa_dfs[[3196]]
mesa_3197 <- mesa_dfs[[3197]]
mesa_3198 <- mesa_dfs[[3198]]
mesa_3199 <- mesa_dfs[[3199]]
mesa_3200 <- mesa_dfs[[3200]]
mesa_3201 <- mesa_dfs[[3201]]
mesa_3202 <- mesa_dfs[[3202]]
mesa_3203 <- mesa_dfs[[3203]]
mesa_3204 <- mesa_dfs[[3204]]
mesa_3205 <- mesa_dfs[[3205]]
mesa_3206 <- mesa_dfs[[3206]]
mesa_3207 <- mesa_dfs[[3207]]
mesa_3208 <- mesa_dfs[[3208]]
mesa_3209 <- mesa_dfs[[3209]]
mesa_3210 <- mesa_dfs[[3210]]
mesa_3211 <- mesa_dfs[[3211]]
mesa_3212 <- mesa_dfs[[3212]]
mesa_3213 <- mesa_dfs[[3213]]
mesa_3214 <- mesa_dfs[[3214]]
mesa_3215 <- mesa_dfs[[3215]]
mesa_3216 <- mesa_dfs[[3216]]
mesa_3217 <- mesa_dfs[[3217]]
mesa_3218 <- mesa_dfs[[3218]]
mesa_3219 <- mesa_dfs[[3219]]
mesa_3220 <- mesa_dfs[[3220]]
mesa_3221 <- mesa_dfs[[3221]]
mesa_3222 <- mesa_dfs[[3222]]
mesa_3223 <- mesa_dfs[[3223]]
mesa_3224 <- mesa_dfs[[3224]]
mesa_3225 <- mesa_dfs[[3225]]
mesa_3226 <- mesa_dfs[[3226]]
mesa_3227 <- mesa_dfs[[3227]]
mesa_3228 <- mesa_dfs[[3228]]
mesa_3229 <- mesa_dfs[[3229]]
mesa_3230 <- mesa_dfs[[3230]]
mesa_3231 <- mesa_dfs[[3231]]
mesa_3232 <- mesa_dfs[[3232]]
mesa_3233 <- mesa_dfs[[3233]]
mesa_3234 <- mesa_dfs[[3234]]
mesa_3235 <- mesa_dfs[[3235]]
mesa_3236 <- mesa_dfs[[3236]]


#aplico la funcion a todas las mesa

mesa_3190 <- limpiar(mesa_3190)
mesa_3191 <- limpiar(mesa_3191)
mesa_3192 <- limpiar(mesa_3192)
mesa_3193 <- limpiar(mesa_3193)
mesa_3194 <- limpiar(mesa_3194)
mesa_3195 <- limpiar(mesa_3195)
mesa_3196 <- limpiar(mesa_3196)
mesa_3197 <- limpiar(mesa_3197)
mesa_3198 <- limpiar(mesa_3198)
mesa_3199 <- limpiar(mesa_3199)
mesa_3200 <- limpiar(mesa_3200)
mesa_3201 <- limpiar(mesa_3201)
mesa_3202 <- limpiar(mesa_3202)
mesa_3203 <- limpiar(mesa_3203)
mesa_3204 <- limpiar(mesa_3204)
mesa_3205 <- limpiar(mesa_3205)
mesa_3206 <- limpiar(mesa_3206)
mesa_3207 <- limpiar(mesa_3207)
mesa_3208 <- limpiar(mesa_3208)
mesa_3209 <- limpiar(mesa_3209)
mesa_3210 <- limpiar(mesa_3210)
mesa_3211 <- limpiar(mesa_3211)
mesa_3212 <- limpiar(mesa_3212)
mesa_3213 <- limpiar(mesa_3213)
mesa_3214 <- limpiar(mesa_3214)
mesa_3215 <- limpiar(mesa_3215)
mesa_3216 <- limpiar(mesa_3216)
mesa_3217 <- limpiar(mesa_3217)
mesa_3218 <- limpiar(mesa_3218)
mesa_3219 <- limpiar(mesa_3219)
mesa_3220 <- limpiar(mesa_3220)
mesa_3221 <- limpiar(mesa_3221)
mesa_3222 <- limpiar(mesa_3222)
mesa_3223 <- limpiar(mesa_3223)
mesa_3224 <- limpiar(mesa_3224)
mesa_3225 <- limpiar(mesa_3225)
mesa_3226 <- limpiar(mesa_3226)
mesa_3227 <- limpiar(mesa_3227)
mesa_3228 <- limpiar(mesa_3228)
mesa_3229 <- limpiar(mesa_3229)
mesa_3230 <- limpiar(mesa_3230)
mesa_3231 <- limpiar(mesa_3231)
mesa_3232 <- limpiar(mesa_3232)
mesa_3233 <- limpiar(mesa_3233)
mesa_3234 <- limpiar(mesa_3234)
mesa_3235 <- limpiar(mesa_3235)
mesa_3236 <- limpiar(mesa_3236)

todo = bind_rows(mesa_3190,mesa_3191,mesa_3192, mesa_3193, mesa_3194, mesa_3195, mesa_3196, mesa_3197, mesa_3198, mesa_3199, mesa_3200, mesa_3201, mesa_3202, mesa_3203, mesa_3204, mesa_3205, mesa_3206, mesa_3207, mesa_3208, mesa_3209, mesa_3210, mesa_3211, mesa_3212, mesa_3213, mesa_3214, mesa_3215, mesa_3216, mesa_3217, mesa_3218, mesa_3219, mesa_3220, mesa_3221, mesa_3222, mesa_3223, mesa_3224, mesa_3225, mesa_3226, mesa_3227, mesa_3228, mesa_3229, mesa_3230, mesa_3231, mesa_3232, mesa_3233, mesa_3234, mesa_3235,mesa_3236)

todo <- todo %>% mutate(VOTOS = as.integer(VOTOS))

Blancos_int <- todo %>%
  filter((`AGRUPACION POLITICA`== 'VOTOS EN BLANCO')&CARGOS== 'PRESIDENTE MUNICIPAL' )

#cantidad de votos blancos para intendente
Blancos_int%>% summarize(TOTAL= sum(VOTOS))


