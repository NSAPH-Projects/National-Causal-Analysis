source("interpolate_function.R")

se_data <- read.csv("../processed_data/census_zcta_uninterpolated.csv")
interpolate_vars <- names(se_data)[3:length(names(se_data))]

for (var in interpolate_vars) {
  print(var)
  se_data[[var]] <- interpolate_ts(se_data, var, location = "zcta", area_var = "AREA")
}

write.csv(se_data, "../processed_data/census_zcta_interpolated.csv", row.names=F)
