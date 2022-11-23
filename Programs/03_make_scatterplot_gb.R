here::i_am("Programs/03_make_scatterplot_gb.R")

library(ggplot2)
library(dplyr)
library(viridis)

scalecolor<-viridis::scale_color_viridis(option = Sys.getenv("colorscale"), discrete = TRUE)

## load data

abs_filepath <- here::here("Data/course_engagement.csv")


data <- read.csv(abs_filepath, header = T)

## Cleaning data for scatter plots:
## converting character video length to numeric var in minutes

data_num <- data %>%
  filter(reupload != 1) %>% ## 2 videos removed from plot due to being reuploads
  mutate(length_min = as.numeric(as.difftime(length, format="%M:%S", units="mins"))) ## PROB 1

# scatter plot of views
views <- ggplot(data_num, aes(length_min, views, color = factor(week))) +
  geom_point() +
  geom_smooth(method='lm', se=F, color='grey50', size = 0.7) +
  theme_bw() +
  labs(x='length of video (min)', y='views', title='Views v. Length of video', colour = "Week") +
  theme(plot.title = element_text(hjust=0.5, size=20, face='bold')) + xlim(0,20) + ylim(0,80) +
  scalecolor
## palette here can be one of the aspects we customize with the wes anderson package 

# scatter plot of unique viewers
unq_viewers <- ggplot(data_num, aes(length_min, unique_viewers, color = factor(week))) +
  geom_point() +
  geom_smooth(method='lm', se=FALSE, color='grey50', size = 0.7) +
  theme_bw() +
  labs(x='length of video (min)', y='unique viewers', title='Unique Viewers v. Length of Video', colour = "Week") +
  theme(plot.title = element_text(hjust=0.5, size=20, face='bold'))  + xlim(0, 20) + ylim(0,45) +
  scalecolor
## palette here can be one of the aspects we customize with the wes anderson package 

## saving plots as .png to output/

ggsave(views, filename = here::here("Output", "views_scatter.png"))
ggsave(unq_viewers, filename = here::here("Output", "unq_viewers_scatter.png"))


## PROB 1: having issues getting the only 1+hour video to convert to numeric count of minutes without sending
## all other values to NA
