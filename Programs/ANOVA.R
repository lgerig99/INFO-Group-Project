library("lubridate")
data <- read.csv("/Users/filyyxwy/Desktop/2022fall/info550-DS_Toolkit/week7/Engagement_report/course_engagement.csv")
data
str(data$length)


#transforming length variable to be numeric, set as minutes

convert_hh_mm_ss_to_numeric <- function(x){
  
  split_x <- strsplit(x, split = ":")
  
  get_minutes <- function(y){
    
    y <- as.numeric(y)
    
    if(length(y) == 1){
      
      # assume it's seconds
      
      y / 60
      
    }else if(length(y) == 2){
      
      y[1] + y[2]/60
      
    }else if(length(y) == 3){
      
      60 * y[1] + y[2] + y[3]/60
      
    }else{
      
      NA
      
    }
    
  }
  
  minutes <- unlist(lapply(split_x, get_minutes))
  
  return(minutes)
  
}

data$length_n <- convert_hh_mm_ss_to_numeric(data$length)


plant.aov <- aov(length_n ~ week, data = data)
summary(plant.aov)


