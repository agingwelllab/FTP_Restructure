#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('FutureTimePerspectiv_DATA_2021-08-11_1454.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$ftp_1)="Many opportunities await me in the future."
label(data$ftp_2)="I expect the I will set many new goals in the future."
label(data$ftp_3)="My future is filled with possibilities."
label(data$ftp_4)="Most of my life lies ahead of me."
label(data$ftp_5)="My future seems infinite to me."
label(data$ftp_6)="I could do anything I want in the future."
label(data$ftp_7)="There is plenty of time left in my life to make new plans."
label(data$ftp_8r)="I have the sense time is running out."
label(data$ftp_9r)="There are only limited possibilities in the future."
label(data$ftp_10r)="As I get older, I begin to experience time as limited."
label(data$ftp_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$ftp_1.factor = factor(data$ftp_1,levels=c("1","2","3","4","5","6","7"))
data$ftp_2.factor = factor(data$ftp_2,levels=c("1","2","3","4","5","6","7"))
data$ftp_3.factor = factor(data$ftp_3,levels=c("1","2","3","4","5","6","7"))
data$ftp_4.factor = factor(data$ftp_4,levels=c("1","2","3","4","5","6","7"))
data$ftp_5.factor = factor(data$ftp_5,levels=c("1","2","3","4","5","6","7"))
data$ftp_6.factor = factor(data$ftp_6,levels=c("1","2","3","4","5","6","7"))
data$ftp_7.factor = factor(data$ftp_7,levels=c("1","2","3","4","5","6","7"))
data$ftp_8r.factor = factor(data$ftp_8r,levels=c("1","2","3","4","5","6","7"))
data$ftp_9r.factor = factor(data$ftp_9r,levels=c("1","2","3","4","5","6","7"))
data$ftp_10r.factor = factor(data$ftp_10r,levels=c("1","2","3","4","5","6","7"))
data$ftp_complete.factor = factor(data$ftp_complete,levels=c("0","1","2"))

levels(data$ftp_1.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_2.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_3.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_4.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_5.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_6.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_7.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_8r.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_9r.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_10r.factor)=c("Very untrue1","2","3","4","5","6","Very True7")
levels(data$ftp_complete.factor)=c("Incomplete","Unverified","Complete")
