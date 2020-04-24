library (data.table)
library(ggplot2)
library(googleVis)
library(tidyr)
library(dplyr)
library(scales)
library(plotly)
library(readxl)

dat_Type <- read_excel("~/Desktop/dat_Type.xlsx")
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

PAT<- gvisMotionChart(dat_Type, idvar="Primary Assessment Type", timevar="Year", options=list(state=settings_type))
plot(PAT)




dat_Ref <- read_excel("~/Desktop/dat_Ref.xlsx")
settings_test <- '{"iconType":"BUBBLE","xZoomedIn":false,"time":"2018","nonSelectedAlpha":0.4,"orderedByX":false,"xAxisOption":"2","playDuration":15000,"sizeOption":"_UNISIZE","xZoomedDataMax":813,"iconKeySettings":[],"orderedByY":false,"xZoomedDataMin":0,"yZoomedIn":false,"uniColorForNonSelected":false,"yLambda":1,"duration":{"multiplier":1,"timeUnit":"Y"},"xLambda":1,"showTrails":true,"yZoomedDataMax":813,"yZoomedDataMin":0,"colorOption":"_UNIQUE_COLOR","dimensions":{"iconDimensions":["dim0"]},"yAxisOption":"2"}'
settings_ref <-'{"iconType":"BUBBLE","xZoomedIn":false,"time":"2018","xAxisOption":"_TIME","xZoomedDataMin":1514764800000,"xLambda":1,"yZoomedIn":false,"sizeOption":"_UNISIZE","xZoomedDataMax":1577836800000,"nonSelectedAlpha":0.4,"orderedByX":false,"uniColorForNonSelected":false,"yLambda":1,"duration":{"multiplier":1,"timeUnit":"Y"},"orderedByY":false,"colorOption":"_UNIQUE_COLOR","iconKeySettings":[{"key":{"dim0":"(blank)"},"trailStart":"2018"},{"key":{"dim0":"School"},"trailStart":"2018"},{"key":{"dim0":"Self-Referred/Family"},"trailStart":"2018"}],"yZoomedDataMax":813,"yZoomedDataMin":0,"yAxisOption":"2","showTrails":true,"dimensions":{"iconDimensions":["dim0"]},"playDuration":15000}'
View(dat_Ref)
Referrals <- gvisMotionChart(dat_Ref, idvar="Psych Referral Source", timevar="Year", options=list(state=settings_test))
plot(Referrals)


