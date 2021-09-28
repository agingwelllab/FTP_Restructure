# Clean FTP data
# 9.17.21 SP

# load required packages
library(tidyverse)
library(here)

# load source functions
source(here::here('src', 'FTP_functions.R'))

# set hard-coded variables

# load data
ftp_raw <- read_csv(here::here('data', 'FTP_data.csv'))

# clean and reformat raw data frame
ftp_clean <- fclean(ftp_raw)

# calculate mean scores for each participant
ftp_mean <- fmean(ftp_clean)
