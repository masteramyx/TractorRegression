#Reading in some datasets with `percent_farm_tractor`

#Did high tractor adoption 1930's lead to higher education in 1940's??
#Same thing with VAM?? More tractors in 1930's means less people on farms over next decade....companies come in and provide work 

df <- read.csv("df29-69.csv")
filtered <- read.csv("filtered_df.csv")
stateLvl <- read.csv("rolledUp_all.csv")
df25 <- subset(df, year == 1925)
df30<- subset(df, year == 1930)
df40<- subset(df, year == 1940)
df50<- subset(df, year == 1950)
df54<- subset(df, year == 1954)
df64<- subset(df, year == 1964)
df69<- subset(df, year == 1969)


# % Farm Tractor 1940 vs 1930
df30_40 <- merge(df30, df40, by = c("name", "stateAbb"), all = FALSE)
plot(df30_40$percent_farm_tractor.x, df30_40$percent_farm_tractor.y, xlab = "% Farm Tractor 1930's", ylab = "% Farm Tractor 1940's")


# % Farm Tractor 1950 vs 1940
df40_50 <- merge(df40, df50, by = c("name", "stateAbb"), all = FALSE)
plot(df40_50$percent_farm_tractor.x, df40_50$percent_farm_tractor.y,xlab = "% Farm Tractor 1940's", ylab = "% Farm Tractor 1950's")


# % Farm Tractor 1954 vs 1950
df50_54 <- merge(df50, df54, by = c("name", "stateAbb"), all = FALSE)
plot(df50_54$percent_farm_tractor.x, df50_54$percent_farm_tractor.y, xlab = "% Farm Tractor 1950", ylab = "% Farm Tractor 1954")

"All base data has been read in.
Now focus on OHIO....Education vs % Farm Tractor"


##EDUCATION
## The EDU variable must be subtracted by 3 to match our grade system
install.packages("readstata13")

library(readstata13)
library(dplyr)
library(ggplot2)
edu <- read.dta13("ohio1940.dta")



ohio1930 <- subset(df30, stateAbb == "OH")
#Adjust FIPS code representation to match the EDU dataset
ohio1930$county <- ohio1930$county * 10

#SUBSET to White males between 18,22 and higrade < 20 which would be graduate school
edu <- subset(edu, sex == "Male")
edu <- subset(edu, between(age, 18, 22))
edu <- subset(edu, higrade < 20)
edu$higrade <- edu$higrade - 3

newEdu <- edu %>%
  group_by(county) %>%
  summarise(avg = mean(higrade))

plot(ohio1930$percent_farm_tractor, newEdu$avg, xlab = "% 1930", ylab ="Avg years education")


plotSrc <- merge(newEdu, ohio1930, by = "county")

#LOESS REGRESSION on EDU vs % Tractor
ggplot(plotSrc,aes(x = percent_farm_tractor, y = avg)) + geom_point()  + geom_smooth() + xlab("1930's %") + ylab("1940's Edu")
identify(ohio1930$percent_farm_tractor, newEdu$avg)



#SCATTER DIAGRAM AND REGRESSION FOR OHIO VAM VS EDU

#VAM dataset
vam <- read.csv("vamFipsData.csv")
vam_ohio <- subset(vam, state == "Ohio")

#VAM in 1947 vs % Tractors 1940
vam_ohio <- subset(vam_ohio, year == 1947)
ohio1940 <- subset(df40, stateAbb == "OH")
ohio1940$county <- ohio1940$county * 10

plot(ohio1940$percent_farm_tractor, vam_ohio$VAM, xlab = "% 1940", ylab = "VAM 1947", ylim = c(0,1000), main = "Ohio VAM vs % Tractor")



------------------------------------------------------------------------------------------------------------------------------------

# NEW DATASET! -> EDU 1940 vs % Tractor 1930
#States:
# Michigan, Wisconsin, Indiana, Illinois, Iowa, Minnesota

oth_state <- read.dta13("cen1940A.dta")

"use `stateicp` as locations
age between 18,22
higrade < 20"


#Michigan Edu
mich_edu <- subset(oth_state, stateicp == "Michigan")
mich_edu <- eduDataFunc(mich_edu)

#Michigan Tractor
mich_tract <- tractDataFunc("MI")

plot(mich_tract$percent_farm_tractor, mich_edu$avg, xlab = "1930 % Tractor", ylab = "1940 Avg. Edu", main = "Michigan")

michPlotSrc <- merge(mich_edu, mich_tract, by = "county")

#LOESS REGRESSION on EDU vs % Tractor
ggplot(michPlotSrc,aes(x = percent_farm_tractor, y = avg)) + geom_point()  + geom_smooth() + xlab("1930's %") + ylab("1940's Edu") + ggtitle("Michigan")
identify(ohio1930$percent_farm_tractor, newEdu$avg)



#SCATTER DIAGRAM AND REGRESSION FOR MICHIGAN VAM VS EDU
mich_vam <- subset(vam, state == "Michigan")













#Function for producing EDU dataset
#
#
eduDataFunc <- function(edu_data){
  edu_data <- subset(edu_data, sex == "Male")
  edu_data <- subset(edu_data, between(age, 18,22))
  edu_data <- subset(edu_data, higrade < 20)
  edu_data$higrade <- edu_data$higrade - 3
  
  reduced_edu_data <- edu_data %>%
    group_by(county) %>%
    summarise(avg = mean(higrade))
  
  return(reduced_edu_data)
}
#
#
#


#Function for producing Tractor set given State Abb
#
#
tractDataFunc <- function(stateAbbre){
  stateDf <- subset(df30, stateAbb == stateAbbre)
  stateDf$county <- stateDf$county * 10
  stateDf$X <- NULL
  return(stateDf)
}
#
#
#
