

#Functions

#WORKING  ----


#Issue #40
# Energy calculation (kcal, kj) ----
source(here::here("functions","Energy_Standardisation.R"))
# ! Tom already generated this function so just incorporate it.
#source("Standardizer_test.R")

# Sum of proximate
# Carotene Eq.
# Vitamin A, retinol activity eq.
#Vitamin A, retinol eq.
#Thiamin
#Niacin (From niacin eq.)
source(here::here("functions","summary_table_functions.R"))

#Formatting
source(here::here("functions","Group_Summariser.R"))
source(here::here("functions", "Summarised_Row_Recalculator.R"))

#Checking two dataset for differences 
#source("compactability_checks_v2.R")

#TO BE DEVELOPED  ----

#RETOL - Issue  #46
#CARTBEQmcg (Carotene Eq.) Issue #44


#UNDER DEVELOPMENT ----

#This function combine three Tagnames (haven't tested)

function(x, var1 = "", var2 = "", var3 = "", var4 = ""){
  
  x[ncol(x)+1] <- NA
  colnames(x)[ncol(x)+1] <- var4
  
  if (!is.na(x$var1[i])) {
    print(!is.na(x$var1[i]))
    x$var4[i] <- x$var1[i]
  }  
  if (is.na(x$var1[i])) { 
    x$var4[i] <- x$var2[i]
  } 
  if (is.na(x$var1[i]) & is.na(x$var2[i])) {
    x$var4[i] <- x$var3[i]
  }
  if (is.na(x$var1[i]) & is.na(x$var2[i]) & is.na(x$var3[i])) {
    x$var4[i] <- NA
  }
  print(x$var4[i])
}


Standardisation_fn <- function(df, var1, var2, var3, new_col_name = "standardised column"){
  
  df[ncol(df)+1] <- NA
  colnames(df)[ncol(df)+1] <- new_col_name
  
  if (!is.na(df$var1[i])) {
    print(!is.na(df$var1[i]))
    df$var4[i] <- df$var1[i]
  }  
  if (is.na(df$var1[i])) { 
    df$var4[i] <- df$var2[i]
  } 
  if (is.na(df$var1[i]) & is.na(df$var2[i])) {
    df$var4[i] <- df$var3[i]
  }
  if (is.na(df$var1[i]) & is.na(df$var2[i]) & is.na(df$var3[i])) {
    df$var4[i] <- NA
  }
  print(df$var4[i])
}

#Function to remove brackets and replace trace to zero
#The following f(x) removes [] and changing tr w/ 0

no_brackets_tr <- function(i){
  case_when(
    str_detect(i, 'tr|[tr]|Tr') ~ "0",
    str_detect(i, '\\[.*?\\]')  ~ str_extract(i, '(?<=\\[).*?(?=\\])'),
    TRUE ~ i)
}

#This function replace "trace" to zero (use w/ apply function for data.frames)
#Changing "Tr" to zero

TraceToZero <- function(x){
  x <- gsub("Trace|trace|[tr]|Tr|tr", "0", x)
  return(x) 
}


#WORKING LOOPS ----

#This function combine all the Tagnames for VITB6
#
#for(i in 1:nrow(fao_fish_fct)){
#  print(i)
#  if (!is.na(fao_fish_fct$VITB6Amg[i])) {
#    print(!is.na(fao_fish_fct$VITB6Amg[i]))
#    fao_fish_fct$VITB6_mg_standardised[i] <- fao_fish_fct$VITB6Amg[i]
#  }  
#  if (is.na(fao_fish_fct$VITB6Amg[i])) { 
#    fao_fish_fct$VITB6_mg_standardised[i] <- fao_fish_fct$VITB6Cmg[i]
#  } 
#  if (is.na(fao_fish_fct$VITB6Amg[i]) & is.na(fao_fish_fct$VITB6Cmg[i])) {
#    fao_fish_fct$VITB6_mg_standardised[i] <- fao_fish_fct$VITB6_mg[i]
#  }
#  if (is.na(fao_fish_fct$VITB6Amg[i]) & is.na(fao_fish_fct$VITB6Cmg[i]) & is.na(fao_fish_fct$VITB6_mg[i])) {
#    fao_fish_fct$VITB6_mg_standardised[i] <- NA
#  }
#  print(fao_fish_fct$VITB6_mg_standardised[i])
#}
#

#NOT WORKING ----

#Funtion to add information on the genus_code (id2), and the confidence of the 
#match (confidence), to the dataset (Tanzania_HCD), using the TZ HCD id (id1).
#
#adding.codes <-  function(Tanzania_HCD, id1, id2, confidence){
#  
#  Tanzania_HCD$dict_testsample_code[Tanzania_HCD$food_id %in% id1] <- id2
#  Tanzania_HCD$Confidence[Tanzania_HCD$food_id %in% id1] <- confidence 
#  
#  return(Tanzania_HCD)
#  
#}
#


#water <- function(df, var1 = "", var2 = "", var3 = 13.5){
#  print(var3)
#  class(df$var1[i])
#  print(df$var2[i])
#  
#  df$var1[i] <- df$var1[i]*(100-as.numeric(var3))/(100-df$var2[i])
#  
#  return(print(df$var1[i]))
#  
#} 
#


