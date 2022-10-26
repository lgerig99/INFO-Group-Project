here::i_am("Programs/00_clean_data.R")
absolute_path_to_data <- here::here("Data", "course_engagement.csv")
data <- read.csv(absolute_path_to_data, header = TRUE)
data2 <- read.csv(absolute_path_to_data, header = TRUE)

install.packages("lubridate")
library(labelled)
library(gtsummary)

library(lubridate)

data$length <- (as.numeric(ms(data$length)))
data$length[4] <- (as.numeric(hms(data2$length[4])))
data$length <- round(x=(data$length)/60,digits = 2)

var_label(data) <- list(
  week = "Week of Class",
  video_number = "Sequential Number of A Video within A Week",
  video_title = "Title of the video",
  topic = "Topic of the Video",
  views = "Total Number of Views of Video",
  unique_viewers = "Total Number of Unique Viewers of Video",
  length = "Length of Video (mins)",
  reupload = "Reuploaded to Fix Mistakes"
)


saveRDS(
  data, 
  file = here::here("Output/data_clean.rds")
)