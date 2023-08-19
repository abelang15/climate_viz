library(tidyverse)


read_csv("data/GLB.Ts+dSST.csv", skip=1, na = "***") %>%
  select(year = Year, t_diff = 'J-D') %>%
  ggplot(aes(x=year, y=t_diff)) +
  geom_line(color = "gray") +
  geom_point(fill= "white", color="gray", shape=21) +
  theme_light() +
  geom_smooth(se= FALSE, color= "black", size=0.5, span=0.25)
  
  
  
  

