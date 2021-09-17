# FTP_Restructure
Repo contains code to restructure data for the Future Time Perspective (FTP) measure exported from REDCap

## Functions
* fclean(*df*)
  * restructures data frame from wide format to long format
  * input: raw data frame imported from CSV (*fraw_df* in functions script)
    * variable names as columns, separate rows for each participant
  * output: data frame with reverse scoring for constraint questions (*ftotal_clean* in functions script)
    * 4 columns: record_id, component, q_number, and response
    * each record_id has 10 rows (one for each question)
* fmean(*df*)
  * calculates average score per component for each record_id (3-4 questions per component)
    * perceived future time opportunity (opp), perceived future time extension (ext), and perceived future time constraint (cons)
  * input: clean data frame from fclean(*df*)'s output
  * output: data frame with mean scores for each record_id (*ftotal_mean* in functions script)
    * 4 columns: record_id, cons, ext, and opp
    * each record_id has 1 row
