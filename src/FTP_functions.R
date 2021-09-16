# function to clean up raw data frame
fclean <- function(fraw_df) {
  
  # remove unnecessary column for "complete" form status
  fwide <- select(fraw_df, -ftp_complete)
  
  # reverse score q8, q9, q10
  f_rscored <- fwide %>%
    transform(ftp_8r = 8 - ftp_8r, ftp_9r = 8 - ftp_9r, ftp_10r = 8 - ftp_10r)
  
  # create a column and calculate mean scores for each participant
  f_clean <- f_rscored %>%
    mutate(ftp_mean = rowMeans(f_rscored[-1]))
}

# function to return separate df with record_id and mean scores
fmean <- function(f_clean) {
  f_mean <- f_clean %>%
    transmute(record_id, ftp_mean)
}