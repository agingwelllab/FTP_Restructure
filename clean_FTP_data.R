# Clean FTP data
# 9.14.21 SP

# load required packages
library(tidyverse)

# load source functions
source('/Users/ssp160230/github_directory/FTP_Restructure/src/FTP_functions.R')

# set hard-coded variables 
ftp_raw <- read_csv('/Users/ssp160230/github_directory/FTP_Restructure/data/FTP_data.csv')

# clean and reformat raw data frame
ftp_clean <- fclean(ftp_raw)

# calculate mean scores for each participant
ftp_mean <- fmean(ftp_clean)

# write csv for clean df
write.csv(
  ftp_clean, 
  "/Users/ssp160230/github_directory/FTP_Restructure/output/FTP_clean.csv", 
  row.names = FALSE
)

# write csv for mean scores df
write.csv(
  ftp_mean, 
  "/Users/ssp160230/github_directory/FTP_Restructure/output/FTP_mean.csv", 
  row.names = FALSE
)