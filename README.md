# FTP_Restructure
Repo contains code to restructure data for the Future Time Perspective (FTP) measure exported from REDCap

## Functions
* fclean(*df*)
  * input: raw data frame imported from CSV (*fraw_df* in functions script)
  * output: data frame with reverse scoring for questions 8-10 and mean scores for each participant (*f_clean* in functions script)
    * 12 columns: record_id, 1 column for each variable/question formatted as ftp_(question number), and ftp_mean
    * variables for questions 8-10 are labeled ftp_8r, ftp_9r, and ftp_10r to indicate reverse scoring for these responses
* fmean(*df*)
  * input: clean data frame from fclean(*df*)'s output
  * output: data frame with mean scores for each record_id (*f_mean* in functions script)
    * 2 columns: record_id and ftp_mean
