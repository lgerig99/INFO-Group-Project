here::i_am("Programs/03_make_scatterplot_gb.R")

library(ggplot2)
library(dplyr)

## load data

abs_filepath <- here::here("Output/data_clean.rds")

data <- readRDS(abs_filepath)

# scatter plot of views v. length of videos
views <- ggplot(data, aes(length, views, color = factor(week))) +
  geom_point() +
  geom_smooth(method='lm', se=F, color='grey50', size = 0.7) +
  theme_bw() +
  labs(x='length of video (min)', y='views', title='Views v. Length of video', colour = "Week") +
  theme(plot.title = element_text(hjust=0.5, size=18, face='bold')) + xlim(0,20) + ylim(0,80)
## palette here can be one of the aspects we customize with the wes anderson package 

# scatter plot of unique viewers
unq_viewers <- ggplot(data, aes(length, unique_viewers, color = factor(week))) +
  geom_point() +
  geom_smooth(method='lm', se=FALSE, color='grey50', size = 0.7) +
  theme_bw() +
  labs(x='length of video (min)', y='unique viewers', title='Unique Viewers v. Length of Video', colour = "Week") +
  theme(plot.title = element_text(hjust=0.5, size=18, face='bold'))  + xlim(0, 20) + ylim(0,45)
## palette here can be one of the aspects we customize with the wes anderson package 

## saving plots as .png to output/

ggsave(views, filename = here::here("Output", "views_scatter.png"))
ggsave(unq_viewers, filename = here::here("Output", "unq_viewers_scatter.png"))
