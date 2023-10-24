###############

# Required packages
install.packages("haven")
install.packages("here")

# Download the data and put in your projecy directory

library(here)
library(haven)
library(readr)
library(tidyverse)


ihs5_roster <- read_dta(here("data",
                             "mwi-ihs5-sample-data",
                             "hh_mod_a_filt_vMAPS.dta"))


# Import unit conversion factors data
ihs5_unit_conversion_factors <- read_csv(here::here("data",
                                                    "mwi-ihs5-sample-data", 
                                                    "IHS5_UNIT_CONVERSION_FACTORS_vMAPS.csv"))

# Import consumption

ihs5_consumption <- read_dta(here("data/mwi-ihs5-sample-data/HH_MOD_G1_vMAPS.dta")) |> 
  select(
    case_id,
    HHID,
    hh_g01,
    hh_g01_oth,
    hh_g02,
    hh_g03a,
    hh_g03b,
    hh_g03b_label,
    hh_g03b_oth,
    hh_g03c,
    hh_g03c_1
  ) %>% 
  rename(
    consumedYN = hh_g01,
    food_item = hh_g02,
    food_item_other = hh_g01_oth,
    consumption_quantity = hh_g03a,
    consumption_unit = hh_g03b,
    consumption_unit_label = hh_g03b_label,
    consumption_unit_oth = hh_g03b_oth,
    consumption_subunit_1 = hh_g03c,
    consumption_subunit_2 = hh_g03c_1
  )

# Subset rows

|> or %>% magritr

Cltr +  <- |>  

  
# Chaining operations
