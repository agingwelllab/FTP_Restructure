fclean <- function(fraw_df) {
  # remove unnecessary column for "complete" form status
  fwide <- select(fraw_df, -ftp_complete)
  # reverse score q8, q9, q10
  f_rscored <- fwide %>%
    transform(ftp_8r = 7 - ftp_8r, ftp_9r = 7 - ftp_9r, ftp_10r = 7 - ftp_10r)
  # create a column and calculate mean scores for each participant
  f_clean <- f_rscored %>%
    mutate(ftp_mean = rowMeans(f_rscored[-1]))
}

fmean <- function(f_clean) {
  # returns df with 2 columns: record_id and ftp_mean scores
  f_mean <- f_clean %>%
    transmute(record_id, ftp_mean)
}