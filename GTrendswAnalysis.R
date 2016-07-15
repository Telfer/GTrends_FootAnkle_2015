#Set working directory, save Google trends files to this directory
#setwd("C:/Users/telfers/Dropbox/GTrend Paper") #UW laptop
setwd("C:/Documents and Settings/STE1/My Documents/My Dropbox/GTrend Paper/Trend Data 2014_12_15")

#Read in and format UK, US, CAN and AUS data
#FOOT_PAIN
FOOT_PAIN_UK = read.csv("FOOT_PAIN_UK.csv",header=FALSE)
FOOT_PAIN_US = read.csv("FOOT_PAIN_US.csv",header=FALSE)
FOOT_PAIN_CAN = read.csv("FOOT_PAIN_CAN.csv",header=FALSE)
FOOT_PAIN_AUS = read.csv("FOOT_PAIN_AUS.csv",header=FALSE)
FOOT_PAIN_UK = Formatdata(x=FOOT_PAIN_UK,y="FOOT_PAIN_UK",cutpoint=143)
FOOT_PAIN_US = Formatdata(x=FOOT_PAIN_US,y="FOOT_PAIN_US",cutpoint=6)
FOOT_PAIN_CAN = Formatdata(x=FOOT_PAIN_CAN,y="FOOT_PAIN_CAN",cutpoint=219)
FOOT_PAIN_AUS = Formatdata(x=FOOT_PAIN_AUS,y="FOOT_PAIN_AUS",cutpoint=346)

#ANKLE_PAIN
ANKLE_PAIN_UK = read.csv("ANKLE_PAIN_UK.csv",header=FALSE)
ANKLE_PAIN_US = read.csv("ANKLE_PAIN_US.csv",header=FALSE)
ANKLE_PAIN_CAN = read.csv("ANKLE_PAIN_CAN.csv",header=FALSE)
ANKLE_PAIN_AUS = read.csv("ANKLE_PAIN_AUS.csv",header=FALSE)
ANKLE_PAIN_UK = Formatdata(x=ANKLE_PAIN_UK,y="ANKLE_PAIN_UK",cutpoint=357)
ANKLE_PAIN_US = Formatdata(x=ANKLE_PAIN_US,y="ANKLE_PAIN_US",cutpoint=111)
ANKLE_PAIN_CAN = Formatdata(x=ANKLE_PAIN_CAN,y="ANKLE_PAIN_CAN",cutpoint=357)
ANKLE_PAIN_AUS = Formatdata(x=ANKLE_PAIN_AUS,y="ANKLE_PAIN_AUS",cutpoint=413)

#HEEL_PAIN
HEEL_PAIN_UK = read.csv("HEEL_PAIN_UK.csv",header=FALSE)
HEEL_PAIN_US = read.csv("HEEL_PAIN_US.csv",header=FALSE)
HEEL_PAIN_CAN = read.csv("HEEL_PAIN_CAN.csv",header=FALSE)
HEEL_PAIN_AUS = read.csv("HEEL_PAIN_AUS.csv",header=FALSE)
HEEL_PAIN_UK = Formatdata(x=HEEL_PAIN_UK,y="HEEL_PAIN_UK",cutpoint=270)
HEEL_PAIN_US = Formatdata(x=HEEL_PAIN_US,y="HEEL_PAIN_US",cutpoint=7)
HEEL_PAIN_CAN = Formatdata(x=HEEL_PAIN_CAN,y="HEEL_PAIN_CAN",cutpoint=372)
HEEL_PAIN_AUS = Formatdata(x=HEEL_PAIN_AUS,y="HEEL_PAIN_AUS",cutpoint=400)

#PLANTAR_FACIITIS
PLANTAR_FACIITIS_UK = read.csv("PLANTAR_FACIITIS_UK.csv",header=FALSE)
PLANTAR_FACIITIS_US = read.csv("PLANTAR_FACIITIS_US.csv",header=FALSE)
PLANTAR_FACIITIS_CAN = read.csv("PLANTAR_FACIITIS_CAN.csv",header=FALSE)
PLANTAR_FACIITIS_AUS = read.csv("PLANTAR_FACIITIS_AUS.csv",header=FALSE)
PLANTAR_FACIITIS_UK = Formatdata(x=PLANTAR_FACIITIS_UK,y="PLANTAR_FACIITIS_UK",cutpoint=112)
PLANTAR_FACIITIS_US = Formatdata(x=PLANTAR_FACIITIS_US,y="PLANTAR_FACIITIS_US",cutpoint=6)
PLANTAR_FACIITIS_CAN = Formatdata(x=PLANTAR_FACIITIS_CAN,y="PLANTAR_FACIITIS_CAN",cutpoint=276)
PLANTAR_FACIITIS_AUS = Formatdata(x=PLANTAR_FACIITIS_AUS,y="PLANTAR_FACIITIS_AUS",cutpoint=294)

#ANKLE_SPRAIN
ANKLE_SPRAIN_UK = read.csv("ANKLE_SPRAIN_UK.csv",header=FALSE)
ANKLE_SPRAIN_US = read.csv("ANKLE_SPRAIN_US.csv",header=FALSE)
ANKLE_SPRAIN_CAN = read.csv("ANKLE_SPRAIN_CAN.csv",header=FALSE)
ANKLE_SPRAIN_AUS = read.csv("ANKLE_SPRAIN_AUS.csv",header=FALSE)
ANKLE_SPRAIN_UK = Formatdata(x=ANKLE_SPRAIN_UK,y="ANKLE_SPRAIN_UK",cutpoint=199)
ANKLE_SPRAIN_US = Formatdata(x=ANKLE_SPRAIN_US,y="ANKLE_SPRAIN_US",cutpoint=7)
ANKLE_SPRAIN_CAN = Formatdata(x=ANKLE_SPRAIN_CAN,y="ANKLE_SPRAIN_CAN",cutpoint=191)
ANKLE_SPRAIN_AUS = Formatdata(x=ANKLE_SPRAIN_AUS,y="ANKLE_SPRAIN_AUS",cutpoint=330)


#FOOT_ORTHOTIC
FOOT_ORTHOTIC_UK = read.csv("FOOT_ORTHOTIC_UK.csv",header=FALSE) #Not enough data
FOOT_ORTHOTIC_US = read.csv("FOOT_ORTHOTIC_US.csv",header=FALSE)
FOOT_ORTHOTIC_CAN = read.csv("FOOT_ORTHOTIC_CAN.csv",header=FALSE) #Not enough data
FOOT_ORTHOTIC_AUS = read.csv("FOOT_ORTHOTIC_AUS.csv",header=FALSE) #Not enough data
#FOOT_ORTHOTIC_UK = Formatdata(x=FOOT_ORTHOTIC_UK,y="FOOT_ORTHOTIC_UK",cutpoint=)
FOOT_ORTHOTIC_US = Formatdata(x=FOOT_ORTHOTIC_US,y="FOOT_ORTHOTIC_US",cutpoint=378)
#FOOT_ORTHOTIC_CAN = Formatdata(x=FOOT_ORTHOTIC_CAN,y="FOOT_ORTHOTIC_CAN",cutpoint=)
#FOOT_ORTHOTIC_AUS = Formatdata(x=FOOT_ORTHOTIC_AUS,y="FOOT_ORTHOTIC_AUS",cutpoint=)

#INSOLE
INSOLE_UK = read.csv("INSOLE_UK.csv",header=FALSE)
INSOLE_US = read.csv("INSOLE_US.csv",header=FALSE)
INSOLE_CAN = read.csv("INSOLE_CAN.csv",header=FALSE)
INSOLE_AUS = read.csv("INSOLE_AUS.csv",header=FALSE)
INSOLE_UK = Formatdata(x=INSOLE_UK,y="INSOLE_UK",cutpoint=142)
INSOLE_US = Formatdata(x=INSOLE_US,y="INSOLE_US",cutpoint=8)
INSOLE_CAN = Formatdata(x=INSOLE_CAN,y="INSOLE_CAN",cutpoint=354)
INSOLE_AUS = Formatdata(x=INSOLE_AUS,y="INSOLE_AUS",cutpoint=424)

#FOOT_SURGERY
FOOT_SURGERY_UK = read.csv("FOOT_SURGERY_UK.csv",header=FALSE) #Not enough data
FOOT_SURGERY_US = read.csv("FOOT_SURGERY_US.csv",header=FALSE) 
FOOT_SURGERY_CAN = read.csv("FOOT_SURGERY_CAN.csv",header=FALSE) #Not enough data
FOOT_SURGERY_AUS = read.csv("FOOT_SURGERY_AUS.csv",header=FALSE) #Not enough data
#FOOT_SURGERY_UK = Formatdata(x=FOOT_SURGERY_UK,y="FOOT_SURGERY_UK",cutpoint=)
FOOT_SURGERY_US = Formatdata(x=FOOT_SURGERY_US,y="FOOT_SURGERY_US",cutpoint=176)
#FOOT_SURGERY_CAN = Formatdata(x=FOOT_SURGERY_CAN,y="FOOT_SURGERY_CAN",cutpoint=)
#FOOT_SURGERY_AUS = Formatdata(x=FOOT_SURGERY_AUS,y="FOOT_SURGERY_AUS",cutpoint=)

#ANKLE_ORTHOSES
ANKLE_ORTHOSES_UK = read.csv("ANKLE_ORTHOSES_UK.csv",header=FALSE) #Not enough data
ANKLE_ORTHOSES_US = read.csv("ANKLE_ORTHOSES_US.csv",header=FALSE) 
ANKLE_ORTHOSES_CAN = read.csv("ANKLE_ORTHOSES_CAN.csv",header=FALSE) #Not enough data
ANKLE_ORTHOSES_AUS = read.csv("ANKLE_ORTHOSES_AUS.csv",header=FALSE) #Not enough data
#ANKLE_ORTHOSES_UK = Formatdata(x=ANKLE_ORTHOSES_UK,y="ANKLE_ORTHOSES_UK",cutpoint=)
ANKLE_ORTHOSES_US = Formatdata(x=ANKLE_ORTHOSES_US,y="ANKLE_ORTHOSES_US",cutpoint=58)
#ANKLE_ORTHOSES_CAN = Formatdata(x=ANKLE_ORTHOSES_CAN,y="ANKLE_ORTHOSES_CAN",cutpoint=)
#ANKLE_ORTHOSES_AUS = Formatdata(x=ANKLE_ORTHOSES_AUS,y="ANKLE_ORTHOSES_AUS",cutpoint=)

#ANKLE_EXERCISE
ANKLE_EXERCISE_UK = read.csv("ANKLE_EXERCISE_UK.csv",header=FALSE) #Not enough data
ANKLE_EXERCISE_US = read.csv("ANKLE_EXERCISE_US.csv",header=FALSE)
ANKLE_EXERCISE_CAN = read.csv("ANKLE_EXERCISE_CAN.csv",header=FALSE) #Not enough data
ANKLE_EXERCISE_AUS = read.csv("ANKLE_EXERCISE_AUS.csv",header=FALSE) #Not enough data
#ANKLE_EXERCISE_UK = Formatdata(x=ANKLE_EXERCISE_UK,y="ANKLE_EXERCISE_UK",cutpoint=)
ANKLE_EXERCISE_US = Formatdata(x=ANKLE_EXERCISE_US,y="ANKLE_EXERCISE_US",cutpoint=322)
#ANKLE_EXERCISE_CAN = Formatdata(x=ANKLE_EXERCISE_CAN,y="ANKLE_EXERCISE_CAN",cutpoint=)
#ANKLE_EXERCISE_AUS = Formatdata(x=ANKLE_EXERCISE_AUS,y="ANKLE_EXERCISE_AUS",cutpoint=)

# #ANKLE_STRETCHES #Not enough data for whole lot
# ANKLE_STRETCH_UK = read.csv("ANKLE_STRETCH_UK.csv",header=FALSE)
# ANKLE_STRETCH_US = read.csv("ANKLE_STRETCH_US.csv",header=FALSE)
# ANKLE_STRETCH_CAN = read.csv("ANKLE_STRETCH_CAN.csv",header=FALSE)
# ANKLE_STRETCH_AUS = read.csv("ANKLE_STRETCH_AUS.csv",header=FALSE)
# ANKLE_STRETCH_UK = Formatdata(x=ANKLE_STRETCH_UK,y="ANKLE_STRETCH_UK",cutpoint=)
# ANKLE_STRETCH_US = Formatdata(x=ANKLE_STRETCH_US,y="ANKLE_STRETCH_US",cutpoint=)
# ANKLE_STRETCH_CAN = Formatdata(x=ANKLE_STRETCH_CAN,y="ANKLE_STRETCH_CAN",cutpoint=)
# ANKLE_STRETCH_AUS = Formatdata(x=ANKLE_STRETCH_AUS,y="ANKLE_STRETCH_AUS",cutpoint=)

#ANKLE_SURGERY
ANKLE_SURGERY_UK = read.csv("ANKLE_SURGERY_UK.csv",header=FALSE) #Not enough data
ANKLE_SURGERY_US = read.csv("ANKLE_SURGERY_US.csv",header=FALSE)
ANKLE_SURGERY_CAN = read.csv("ANKLE_SURGERY_CAN.csv",header=FALSE) #Not enough data
ANKLE_SURGERY_AUS = read.csv("ANKLE_SURGERY_AUS.csv",header=FALSE) #Not enough data
#ANKLE_SURGERY_UK = Formatdata(x=ANKLE_SURGERY_UK,y="ANKLE_SURGERY_UK",cutpoint=)
ANKLE_SURGERY_US = Formatdata(x=ANKLE_SURGERY_US,y="ANKLE_SURGERY_US",cutpoint=185)
#ANKLE_SURGERY_CAN = Formatdata(x=ANKLE_SURGERY_CAN,y="ANKLE_SURGERY_CAN",cutpoint=)
#ANKLE_SURGERY_AUS = Formatdata(x=ANKLE_SURGERY_AUS,y="ANKLE_SURGERY_AUS",cutpoint=)

#Form NH datasets
FOOT_PAIN_NH <- CombineNH(FOOT_PAIN_UK,FOOT_PAIN_US,FOOT_PAIN_CAN,"FOOT_PAIN_NH")
ANKLE_PAIN_NH <- CombineNH(ANKLE_PAIN_UK,ANKLE_PAIN_US,ANKLE_PAIN_CAN,"ANKLE_PAIN_NH")
HEEL_PAIN_NH <- CombineNH(HEEL_PAIN_UK,HEEL_PAIN_US,HEEL_PAIN_CAN,"HEEL_PAIN_NH")
PLANTAR_FACIITIS_NH <- CombineNH(PLANTAR_FACIITIS_UK,PLANTAR_FACIITIS_US,PLANTAR_FACIITIS_CAN,"PLANTAR_FACIITIS_NH")
ANKLE_SPRAIN_NH <- CombineNH(ANKLE_SPRAIN_UK,ANKLE_SPRAIN_US,ANKLE_SPRAIN_CAN,"ANKLE_SPRAIN_NH")
INSOLE_NH <- CombineNH(INSOLE_UK,INSOLE_US,INSOLE_CAN,"INSOLE_NH")

#Stl plots
decomp(FOOT_PAIN_NH,52)
ggsave("FOOT_PAIN_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(FOOT_PAIN_NH,52)
ggsave("FOOT_PAIN_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(FOOT_PAIN_AUS,52)
ggsave("FOOT_PAIN_AUS_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(FOOT_PAIN_AUS,52)
ggsave("FOOT_PAIN_AUS_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(ANKLE_PAIN_NH,52)
ggsave("ANKLE_PAIN_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(ANKLE_PAIN_NH,52)
ggsave("ANKLE_PAIN_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(ANKLE_PAIN_AUS,52)
ggsave("ANKLE_PAIN_AUS_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(ANKLE_PAIN_AUS,52)
ggsave("ANKLE_PAIN_AUS_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(HEEL_PAIN_NH,52)
ggsave("HEEL_PAIN_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(HEEL_PAIN_NH,52)
ggsave("HEEL_PAIN_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(HEEL_PAIN_AUS,52)
ggsave("HEEL_PAIN_AUS_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(HEEL_PAIN_AUS,52)
ggsave("HEEL_PAIN_AUS_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(PLANTAR_FACIITIS_NH,52)
ggsave("PLANTAR_FACIITIS_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(PLANTAR_FACIITIS_NH,52)
ggsave("PLANTAR_FACIITIS_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(PLANTAR_FACIITIS_AUS,52)
ggsave("PLANTAR_FACIITIS_AUS_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(PLANTAR_FACIITIS_AUS,52)
ggsave("PLANTAR_FACIITIS_AUS_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(ANKLE_SPRAIN_NH,52)
ggsave("ANKLE_SPRAIN_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(ANKLE_SPRAIN_NH,52)
ggsave("ANKLE_SPRAIN_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(ANKLE_SPRAIN_AUS,52)
ggsave("ANKLE_SPRAIN_AUS_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(ANKLE_SPRAIN_AUS,52)
ggsave("ANKLE_SPRAIN_AUS_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(INSOLE_NH,52)
ggsave("INSOLE_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(INSOLE_NH,52)
ggsave("INSOLE_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(INSOLE_AUS,52)
ggsave("INSOLE_AUS_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(INSOLE_AUS,52)
ggsave("INSOLE_AUS_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(FOOT_ORTHOTIC_US,52)
ggsave("FOOT_ORTHOTIC_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(FOOT_ORTHOTIC_US,52)
ggsave("FOOT_ORTHOTIC_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(FOOT_SURGERY_US,52)
ggsave("FOOT_SURGERY_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(FOOT_SURGERY_US,52)
ggsave("FOOT_SURGERY_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(ANKLE_ORTHOSES_US,52)
ggsave("ANKLE_ORTHOSES_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(ANKLE_ORTHOSES_US,52)
ggsave("ANKLE_ORTHOSES_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(ANKLE_EXERCISE_US,52)
ggsave("ANKLE_EXERCISE_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(ANKLE_EXERCISE_US,52)
ggsave("ANKLE_EXERCISE_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

decomp(ANKLE_SURGERY_US,52)
ggsave("ANKLE_SURGERY_NH_stl.png",scale=2, units="in", width=3, height=3, dpi=300)
perio(ANKLE_SURGERY_US,52)
ggsave("ANKLE_SURGERY_NH_peri.png", scale=2, width=4, height=1.5, dpi=300)

#Summer winter paired comparisons
CompSumWin(FOOT_PAIN_NH)
CompSumWin(FOOT_PAIN_AUS)
CompSumWin(ANKLE_PAIN_NH)
CompSumWin(ANKLE_PAIN_AUS)
CompSumWin(HEEL_PAIN_NH)
CompSumWin(HEEL_PAIN_AUS)
CompSumWin(PLANTAR_FACIITIS_NH)
CompSumWin(PLANTAR_FACIITIS_AUS)
CompSumWin(ANKLE_SPRAIN_NH)
CompSumWin(ANKLE_SPRAIN_AUS)
CompSumWin(INSOLE_NH)
CompSumWin(INSOLE_AUS)
CompSumWin(FOOT_ORTHOTIC_US)
CompSumWin(FOOT_SURGERY_US)
CompSumWin(ANKLE_ORTHOSES_US)
CompSumWin(ANKLE_EXERCISE_US)
CompSumWin(ANKLE_SURGERY_US)

#Trend test
kendall_test(FOOT_PAIN_NH)
kendall_test(FOOT_PAIN_AUS)
kendall_test(ANKLE_PAIN_NH)
kendall_test(ANKLE_PAIN_AUS)
kendall_test(HEEL_PAIN_NH)
kendall_test(HEEL_PAIN_AUS)
kendall_test(PLANTAR_FACIITIS_NH)
kendall_test(PLANTAR_FACIITIS_AUS)
kendall_test(ANKLE_SPRAIN_NH)
kendall_test(ANKLE_SPRAIN_AUS)
kendall_test(INSOLE_NH)
kendall_test(INSOLE_AUS)
kendall_test(FOOT_ORTHOTIC_US)
kendall_test(FOOT_SURGERY_US)
kendall_test(ANKLE_ORTHOSES_US)
kendall_test(ANKLE_EXERCISE_US)
kendall_test(ANKLE_SURGERY_US)

#Seasonality test
Seasonality_test(FOOT_PAIN_NH)
Seasonality_test(FOOT_PAIN_AUS)
Seasonality_test(ANKLE_PAIN_NH)
Seasonality_test(ANKLE_PAIN_AUS)
Seasonality_test(HEEL_PAIN_NH)
Seasonality_test(HEEL_PAIN_AUS)
Seasonality_test(PLANTAR_FACIITIS_NH)
Seasonality_test(PLANTAR_FACIITIS_AUS)
Seasonality_test(ANKLE_SPRAIN_NH)
Seasonality_test(ANKLE_SPRAIN_AUS)
Seasonality_test(INSOLE_NH)
Seasonality_test(INSOLE_AUS)
Seasonality_test(FOOT_ORTHOTIC_US)
Seasonality_test(FOOT_SURGERY_US)
Seasonality_test(ANKLE_ORTHOSES_US)
Seasonality_test(ANKLE_EXERCISE_US)
Seasonality_test(ANKLE_SURGERY_US)

#Plot main Pain Figure (Fig 1)
#Scale factors
Ankle=0.298
Heel=0.512

FOOT_PAIN_NH_raw=FOOT_PAIN_NH
FOOT_PAIN_NH_ma=FOOT_PAIN_NH
FOOT_PAIN_NH_ma[,2]=movingAverage(FOOT_PAIN_NH_ma[,2],5,TRUE)
FOOT_PAIN_AUS_raw=FOOT_PAIN_AUS
FOOT_PAIN_AUS_ma=FOOT_PAIN_AUS
FOOT_PAIN_AUS_ma[,2]=movingAverage(FOOT_PAIN_AUS_ma[,2],5,TRUE)
ANKLE_PAIN_NH_raw=ANKLE_PAIN_NH
ANKLE_PAIN_NH_raw[,2]=ANKLE_PAIN_NH_raw[,2]*Ankle
ANKLE_PAIN_NH_ma=ANKLE_PAIN_NH
ANKLE_PAIN_NH_ma[,2]=movingAverage(ANKLE_PAIN_NH_ma[,2],5,TRUE)
ANKLE_PAIN_NH_ma[,2]=ANKLE_PAIN_NH_ma[,2]*Ankle
ANKLE_PAIN_AUS_raw=ANKLE_PAIN_AUS
ANKLE_PAIN_AUS_raw[,2]=ANKLE_PAIN_AUS_raw[,2]*Ankle
ANKLE_PAIN_AUS_ma=ANKLE_PAIN_AUS
ANKLE_PAIN_AUS_ma[,2]=movingAverage(ANKLE_PAIN_AUS_ma[,2],5,TRUE)
ANKLE_PAIN_AUS_ma[,2]=ANKLE_PAIN_AUS_ma[,2]*Ankle
HEEL_PAIN_NH_raw=HEEL_PAIN_NH
HEEL_PAIN_NH_raw[,2]=HEEL_PAIN_NH_raw[,2]*Heel
HEEL_PAIN_NH_ma=HEEL_PAIN_NH
HEEL_PAIN_NH_ma[,2]=movingAverage(HEEL_PAIN_NH_ma[,2],5,TRUE)
HEEL_PAIN_NH_ma[,2]=HEEL_PAIN_NH_ma[,2]*Heel
HEEL_PAIN_AUS_raw=HEEL_PAIN_AUS
HEEL_PAIN_AUS_raw[,2]=HEEL_PAIN_AUS_raw[,2]*Heel
HEEL_PAIN_AUS_ma=HEEL_PAIN_AUS
HEEL_PAIN_AUS_ma[,2]=movingAverage(HEEL_PAIN_AUS_ma[,2],5,TRUE)
HEEL_PAIN_AUS_ma[,2]=HEEL_PAIN_AUS_ma[,2]*Heel

p <- ggplot() + 
  geom_line(data=FOOT_PAIN_NH_raw,aes(as.Date(Date),FOOT_PAIN_NH),
            colour="pink",alpha=0.7,size=0.3)+
  geom_line(data=FOOT_PAIN_AUS_raw,aes(as.Date(Date),FOOT_PAIN_AUS),
            colour="light blue",alpha=0.7,size=0.3)+
  geom_line(data=ANKLE_PAIN_NH_raw,aes(as.Date(Date),ANKLE_PAIN_NH),
            colour="grey",alpha=0.7,size=0.3)+
  geom_line(data=ANKLE_PAIN_AUS_raw,aes(as.Date(Date),ANKLE_PAIN_AUS),
            colour="light green",alpha=0.7,size=0.3)+
  geom_line(data=HEEL_PAIN_NH_raw,aes(as.Date(Date),HEEL_PAIN_NH),
            colour="lightsalmon",alpha=0.7,size=0.3)+
  geom_line(data=HEEL_PAIN_AUS_raw,aes(as.Date(Date),HEEL_PAIN_AUS),
            colour="lightblue1",alpha=0.7,size=0.3)+
  geom_line(data=FOOT_PAIN_NH_ma,aes(as.Date(Date),FOOT_PAIN_NH),
            colour="red")+
  geom_line(data=FOOT_PAIN_AUS_ma,aes(as.Date(Date),FOOT_PAIN_AUS),
            colour="blue")+
  geom_line(data=ANKLE_PAIN_NH_ma,aes(as.Date(Date),ANKLE_PAIN_NH),
            colour="black")+
  geom_line(data=ANKLE_PAIN_AUS_ma,aes(as.Date(Date),ANKLE_PAIN_AUS),
            colour="dark green")+
  geom_line(data=HEEL_PAIN_NH_ma,aes(as.Date(Date),HEEL_PAIN_NH),
            colour="darkorange4")+
  geom_line(data=HEEL_PAIN_AUS_ma,aes(as.Date(Date),HEEL_PAIN_AUS),
            colour="cyan3")+
  xlab("Date") +
  ylab("Relative search volume") +
  theme(axis.title=element_text(size=12),axis.text=element_text(size=8))
p

ggsave("PAIN_WW.png", width=6.5, height=6.2, dpi=300)

#Scale factors
Ankle=0.298
Heel=0.512

#Merge
PAIN_df=FOOT_PAIN_NH
PAIN_df=merge(PAIN_df,FOOT_PAIN_AUS,by="Date",all=TRUE)
PAIN_df=merge(PAIN_df,ANKLE_PAIN_NH,by="Date",all=TRUE)
PAIN_df=merge(PAIN_df,ANKLE_PAIN_AUS,by="Date",all=TRUE)
PAIN_df=merge(PAIN_df,HEEL_PAIN_NH,by="Date",all=TRUE)
PAIN_df=merge(PAIN_df,HEEL_PAIN_AUS,by="Date",all=TRUE)
PAIN_df[,4]=PAIN_df[,4]*Ankle
PAIN_df[,5]=PAIN_df[,5]*Ankle
PAIN_df[,6]=PAIN_df[,6]*Heel
PAIN_df[,7]=PAIN_df[,7]*Heel
PAIN_df[,8]=movingAverage(PAIN_df[,2],5,TRUE)
PAIN_df[,9]=movingAverage(PAIN_df[,3],5,TRUE)
PAIN_df[,10]=movingAverage(PAIN_df[,4],5,TRUE)
PAIN_df[,11]=movingAverage(PAIN_df[,5],5,TRUE)
PAIN_df[,12]=movingAverage(PAIN_df[,6],5,TRUE)
PAIN_df[,13]=movingAverage(PAIN_df[,7],5,TRUE)
PAIN_df=rename(PAIN_df, c(V8="FOOT_PAIN_NH_ma",V9="FOOT_PAIN_AUS_ma",
                          V10="ANKLE_PAIN_NH_ma",V11="ANKLE_PAIN_AUS_ma",
                          V12="HEEL_PAIN_NH_ma", V13="HEEL_PAIN_AUS_ma"))

PAIN_df_Long=melt(PAIN_df, id.vars="Date", na.rm=TRUE)
PAIN_df_Long$Date=as.Date(PAIN_df_Long$Date, "%Y-%m-%d")
PAIN_df_Long=rename(PAIN_df_Long, c(variable="Location",value="Search_volume"))
PAIN_df_Long$Search_volume=as.numeric(PAIN_df_Long$Search_volume)

#plot data. Turn off and on theme legend to get legnet but paste in later
m = ggplot(PAIN_df_Long, aes(Date, Search_volume,group=Location,colour=Location))
m = m + geom_line(size=0.5) 
m = m + scale_colour_manual(values=c("pink","light blue","grey","light green",
                                     "lightsalmon","lightblue1","red","dark blue",
                                     "black","dark green","darkorange4",
                                     "cyan3"))
#                            breaks = c("FOOT_P"))
m = m + labs(y="Relative search volume")
m = m + theme_bw()
#m = m + theme(legend.position="none")
m

#Plot main condition graph
PF=0.07 #Scale factor
Condition_df=PLANTAR_FACIITIS_NH
Condition_df=merge(Condition_df,PLANTAR_FACIITIS_AUS,by="Date",all=TRUE)
Condition_df=merge(Condition_df,ANKLE_SPRAIN_NH,by="Date",all=TRUE)
Condition_df=merge(Condition_df,ANKLE_SPRAIN_AUS,by="Date",all=TRUE)
Condition_df[,2]=Condition_df[,2]*PF
Condition_df[,3]=Condition_df[,3]*PF
Condition_df[,6]=movingAverage(Condition_df[,2],5,TRUE)
Condition_df[,7]=movingAverage(Condition_df[,3],5,TRUE)
Condition_df[,8]=movingAverage(Condition_df[,4],5,TRUE)
Condition_df[,9]=movingAverage(Condition_df[,5],5,TRUE)
Condition_df=rename(Condition_df, c(V6="PLANTAR_FACIITIS_NH_ma",
                                    V7="PLANTAR_FACIITIS_AUS_ma",
                                    V8="ANKLE_SPRAIN_NH_ma",
                                    V9="ANKLE_SPRAIN_AUS_ma"))
Condition_df_Long=melt(Condition_df, id.vars="Date", na.rm=TRUE)
Condition_df_Long$Date=as.Date(Condition_df_Long$Date, "%Y-%m-%d")
Condition_df_Long=rename(Condition_df_Long, c(variable="Location",
                                              value="Search_volume"))
Condition_df_Long$Search_volume=as.numeric(Condition_df_Long$Search_volume)

#plot data. Turn off and on theme legend to get legnet but paste in later
m = ggplot(Condition_df_Long, 
           aes(Date, Search_volume,group=Location,colour=Location))
m = m + geom_line(size=0.5) 
m = m + scale_colour_manual(values=c("pink","light blue","grey","light green",
                                     "red","dark blue","black","dark green"))
#                            breaks = c("FOOT_P"))
m = m + labs(y="Relative search volume")
m = m + theme_bw()
#m = m + theme(legend.position="none")
m

ggsave("Condition_WW_legend.png",width=6,height=6,dpi=300)

#Plot foot treatment graph
FO=0.07 #Scale factor
FS=0.15 #Scale factor
Foot_treatment_df=INSOLE_NH
Foot_treatment_df=merge(Foot_treatment_df,INSOLE_AUS,by="Date",all=TRUE)
Foot_treatment_df=merge(Foot_treatment_df,FOOT_ORTHOTIC_US,by="Date",all=TRUE)
Foot_treatment_df=merge(Foot_treatment_df,FOOT_SURGERY_US,by="Date",all=TRUE)
Foot_treatment_df[,4]=Foot_treatment_df[,4]*FO
Foot_treatment_df[,5]=Foot_treatment_df[,5]*FS
Foot_treatment_df[,6]=movingAverage(Foot_treatment_df[,2],5,TRUE)
Foot_treatment_df[,7]=movingAverage(Foot_treatment_df[,3],5,TRUE)
Foot_treatment_df[,8]=movingAverage(Foot_treatment_df[,4],5,TRUE)
Foot_treatment_df[,9]=movingAverage(Foot_treatment_df[,5],5,TRUE)
Foot_treatment_df=rename(Foot_treatment_df, c(V6="INSOLE_NH_ma",
                                    V7="INSOLE_AUS_ma",
                                    V8="FOOT_ORTHOTIC_US_ma",
                                    V9="FOOT_SURGERY_US_ma"))
Foot_treatment_df_Long=melt(Foot_treatment_df, id.vars="Date", na.rm=TRUE)
Foot_treatment_df_Long$Date=as.Date(Foot_treatment_df_Long$Date, "%Y-%m-%d")
Foot_treatment_df_Long=rename(Foot_treatment_df_Long, c(variable="Location",
                                                        value="Search_volume"))
Foot_treatment_df_Long$Search_volume=as.numeric(Foot_treatment_df_Long$Search_volume)

#plot data. Turn off and on theme legend to get legnet but paste in later
m = ggplot(Foot_treatment_df_Long, 
           aes(Date, Search_volume,group=Location,colour=Location))
m = m + geom_line(size=0.5) 
m = m + scale_colour_manual(values=c("pink","light blue","grey","light green",
                                     "red","dark blue","black","dark green"))
#                            breaks = c("FOOT_P"))
m = m + labs(y="Relative search volume")
m = m + theme_bw()
#m = m + theme(legend.position="none")
m

ggsave("Foot_treatment_WW_legend.png",width=6,height=6,dpi=300)

#Plot ankle treatment graph
AE=0.266 #Scale factor
AS=0.38 #Scale factor
Ankle_treatment_df=ANKLE_ORTHOSES_US
Ankle_treatment_df=merge(Ankle_treatment_df,ANKLE_EXERCISE_US,by="Date",all=TRUE)
Ankle_treatment_df=merge(Ankle_treatment_df,ANKLE_SURGERY_US,by="Date",all=TRUE)
Ankle_treatment_df[,3]=Ankle_treatment_df[,3]*AE
Ankle_treatment_df[,4]=Ankle_treatment_df[,4]*AS
Ankle_treatment_df[,5]=movingAverage(Ankle_treatment_df[,2],5,TRUE)
Ankle_treatment_df[,6]=movingAverage(Ankle_treatment_df[,3],5,TRUE)
Ankle_treatment_df[,7]=movingAverage(Ankle_treatment_df[,4],5,TRUE)
Ankle_treatment_df=rename(Ankle_treatment_df, c(V5="ANKLE_ORTHOSES_US_ma",
                                                V6="ANKLE_EXERCISE_US_ma",
                                                V7="ANKLE_SURGERY_US_ma"))
Ankle_treatment_df_Long=melt(Ankle_treatment_df, id.vars="Date", na.rm=TRUE)
Ankle_treatment_df_Long$Date=as.Date(Ankle_treatment_df_Long$Date, "%Y-%m-%d")
Ankle_treatment_df_Long=rename(Ankle_treatment_df_Long, c(variable="Location",
                                                          value="Search_volume"))
Ankle_treatment_df_Long$Search_volume=as.numeric(Ankle_treatment_df_Long$Search_volume)

#plot data. Turn off and on theme legend to get legnet but paste in later
m = ggplot(Ankle_treatment_df_Long, 
           aes(Date, Search_volume,group=Location,colour=Location))
m = m + geom_line(size=0.5) 
m = m + scale_colour_manual(values=c("pink","light blue","grey",
                                     "red","dark blue","black"))
#                            breaks = c("FOOT_P"))
m = m + labs(y="Relative search volume")
m = m + theme_bw()
#m = m + theme(legend.position="none")
m

ggsave("Ankle_treatment_WW_legend.png",width=6,height=6,dpi=300)
