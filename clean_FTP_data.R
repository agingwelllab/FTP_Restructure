# Clean FTP data
# 9.14.21 SP

# load required packages
library(tidyverse)

# load source functions
source('/Users/ssp160230/github_directory/FTP_RAnalysis/src/FTP_functions.R')

# set hard-coded variables 
ftp_raw <- read_csv('/Users/ssp160230/github_directory/FTP_RAnalysis/data/FTP_data.csv')

# clean and reformat raw data frame
ftp_clean <- fclean(ftp_raw)

# calculate mean octant scores for each participant
ftp_mean <- fmean(ftp_clean)

#write csv for clean data frame and octant data frame
write.csv(ftp_clean, "/Users/ssp160230/github_directory/FTP_RAnalysis/output/FTP_clean.csv", row.names = FALSE)
write.csv(ftp_mean, "/Users/ssp160230/github_directory/FTP_RAnalysis/output/FTP_mean.csv", row.names = FALSE)