here::i_am("Programs/01_make_table1.R")

data <- readRDS(
  file = here::here("Output/data_clean.rds")
)

library(gtsummary)

table_one <- data |>
  select( "video_number", "views", "topic", "unique_viewers", "length", "reupload") |>
  tbl_summary(by = topic) |>
  modify_spanning_header(c("stat_1", "stat_2","stat_3","stat_4","stat_5" ) ~ "**Topics in Every Week**") |>
  add_overall() |>
  add_p()

saveRDS(
  table_one,
  file = here::here("Output/table_one.rds")
)