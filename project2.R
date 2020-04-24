library (data.table)
library(ggplot2)
library(googleVis)
library(tidyr)
library(dplyr)
library(scales)
library(plotly)
library(readxl)

dat_Type <- read.csv("https://raw.githubusercontent.com/kwe431/Project2-Data/master/dat_Type.csv")

View(dat_Type)

settings_type <-'{"colorOption":"_UNIQUE_COLOR","time":"2018","dimensions":{"iconDimensions":
["dim0"]},"playDuration":15000,"yLambda":1,"xZoomedIn":false,"iconKeySettings":
[{"key":{"dim0":"Psych"},"trailStart":"2018"}],"xZoomedDataMin":1514764800000,
"yAxisOption":"2","iconType":"BUBBLE","xZoomedDataMax":1577836800000,"orderedByX"
:false,"duration":{"timeUnit":"Y","multiplier":1},"uniColorForNonSelected":false,
"nonSelectedAlpha":0.3,"orderedByY":false,"xLambda":1,"showTrails":true,"xAxisOption"
:"_TIME","yZoomedIn":false,"yZoomedDataMax":2070,"sizeOption":"_UNISIZE",
"yZoomedDataMin":0}
  '

PAT<- gvisMotionChart(dat_Type, idvar="Primary.Assessment.Type", timevar="Year", options=list(state=settings_type))
plot(PAT)




dat_Ref <- read.csv("https://raw.githubusercontent.com/kwe431/Project2-Data/master/dat_Ref.csv")

settings_ref <-'{"iconType":"BUBBLE","xZoomedIn":false,"iconKeySettings":[{"key":{"dim0":"School"},
"trailStart":"2018"},{"key":{"dim0":"(blank)"},"trailStart":"2018"},{"key":{"dim0":"Self-Referred/Family"},
"trailStart":"2018"}],"yAxisOption":"2","xZoomedDataMin":1514764800000,"yZoomedIn":false,"nonSelectedAlpha"
:0.4,"sizeOption":"_UNISIZE","xZoomedDataMax":1577836800000,"time":"2018","orderedByY":false,
"uniColorForNonSelected":false,"yLambda":1,"xAxisOption":"_TIME","xLambda":1,"showTrails":true,"orderedByX"
:false,"yZoomedDataMax":813,"yZoomedDataMin":0,"duration":{"multiplier":1,"timeUnit":"Y"},"colorOption":"2",
"dimensions":{"iconDimensions":["dim0"]},"playDuration":15000}'

View(dat_Ref)
Referrals <- gvisMotionChart(dat_Ref, idvar="Psych.Referral.Source", timevar="Year", options=list(state=settings_ref))
plot(Referrals)


