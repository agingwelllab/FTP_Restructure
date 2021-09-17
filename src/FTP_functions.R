# function to clean up raw data frame
fclean <- function(fraw_df) {
  
  # remove unnecessary column for "complete" form status
  fwide <- select(fraw_df, -ftp_complete)
  
  # reverse score constraint questions
  f_rscored <- fwide %>%
    transform(cons_1 = 8 - cons_1, cons_2 = 8 - cons_2, cons_3 = 8 - cons_3)
  
  # restructure df to change from wide to long format
  flong <- f_rscored %>%
    gather(variables, response, opp_1:cons_3, factor_key = TRUE)
  
  #separate variables column into ftp_component and q_number
  ftotal <- flong %>%
    separate(variables, c('component', 'q_number'), '_')
  
  # change 'q_number' column from chr to num
  ftotal$q_number <- as.numeric(ftotal$q_number)
  
  # sort by record_id and component
  ftotal_clean <- ftotal %>%
    arrange(record_id, component)
}

# function to create new df with mean component scores from clean df
fmean <- function(ftotal_clean) {
  
  # create df with mean component scores for each record_id
  ftotal_mean_raw <- aggregate(
    response ~ record_id + component, 
    data = ftotal_clean, 
    FUN = mean
  )
  
  # round mean scores to 2 decimals
  ftotal_mean_raw$response <- round(ftotal_mean_raw$response, digits = 2)
  
  # pivot df to wide format to get components as columns
  ftotal_mean <- pivot_wider(
    data = ftotal_mean_raw, 
    names_from = component, 
    values_from = response
  )
}
