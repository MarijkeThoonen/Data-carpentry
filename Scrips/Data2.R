library(tidyverse)

surveys <- read_csv("data/portal_data_joined.csv")

select(surveys, plot_id, species_id, weight)

filter(surveys, year == 1995)

surveys2 <- filter(surveys,weight < 5)
surveys_sml <-  select(surveys2, species_id, sex, weight)

surveys_sml <-  select(filter(surveys, weight < 5),species_id, sex, weight)

surveys%>%
  filter(weight < 5)%>%
  select (species_id, sex, weight)

surveys_sml <- surveys%>%
  filter(weight < 5)%>%
  select (species_id, sex, weight)

surveys_3 <- surveys %>% 
  filter (year < 1995) %>%
  select (year, sex, weight)

surveys%>%
    mutate(weight_kg = weight/1000)

surveys %>%
  mutate(weight_kg = weight/1000,
         weight_kg2 = weight_kg*2) %>% 
select(year, weight, weight_kg, weight_kg2)

surveys4 <- surveys %>%
  mutate(hindfoot_half = hindfoot_length/2) %>%
  select(species_id, hindfoot_half)%>%
  filter(!is.na(hindfoot_lenght))%>%
  filter(hindfoot_half< 30)
  
