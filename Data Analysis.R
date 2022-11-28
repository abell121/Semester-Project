#install ggplot2
library(ggplot2)
# analyzing filter function
filter(Maternal_Health_Local_Data_tidy_, SMMRace == "Overall")

#bar chart for SMM variable 
Maternal_Health_Local_Data_tidy_ %>% 
  group_by(SMMRace) %>% 
  summarise(n = mean(SMMPercent, na.rm = TRUE)) %>% 
  ggplot() +
  geom_col(aes(x = SMMRace, y = n, fill = SMMRace))

#bar chart for Age over 35 variable 
Maternal_Health_Local_Data_tidy_ %>% 
  group_by(AgeRace) %>% 
  summarise(n = mean(Ageover35Percent, na.rm = TRUE)) %>% 
  ggplot() +
  geom_col(aes(x = AgeRace, y = n, fill = AgeRace))

#bar chart for Age over 35 variable 
Maternal_Health_Local_Data_tidy_ %>% 
  group_by(AgeRace) %>% 
  summarise(n = mean(Ageover35Percent, na.rm = TRUE)) %>% 
  ggplot() +
  geom_col(aes(x = AgeRace, y = n, fill = AgeRace))

#bar chart of SMMRace vs SMM Percent (cumulative)
ggplot(data = Maternal_Health_Local_Data_tidy_) +
  geom_col(mapping = aes(x = SMMRace, y = SMMPercent))

#*error code below*
#ggplot(data = Maternal_Health_Local_Data_tidy_) +
#  geom_bar(mapping = aes(x= SMMRace, y = SMMPercent))