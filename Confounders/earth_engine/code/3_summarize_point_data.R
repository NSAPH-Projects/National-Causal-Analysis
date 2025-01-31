library(data.table)
NSAPHutils::set_threads()

out <- NULL

for (year in 2000:2020) {
  print(year)
  year_data <- fread(paste0("../raw_data/temperature_point_downloads/temp_zip_", year, ".csv"))
  year_data$year <- year
  out <- rbind(out, year_data)
}

fwrite(out, "../processed_data/temperature_daily_zipcode_point.csv")
out <- out[, .(tmmx = mean(tmmx, na.rm = T), rmax = mean(rmax, na.rm = T), pr = mean(pr, na.rm = T)), 
           by = c("ZIP", "year")]
fwrite(out, "../processed_data/temperature_annual_zipcode_point.csv")
