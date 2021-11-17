# main.R
start.time <- Sys.time()
message(paste0("Starting code at ",start.time))
save(start.time,file="timing")

# generate main results

source("plot_impulse_response.R")
source("plot_forecasts.R")
for ( i in 3:6 ) {
source(paste0("make_table_",i,".R"))
}

timing <- load("timing")
diff <- Sys.time() - start.time
message(paste0("Code ran for ",diff," seconds."))

Sys.info()
system("grep MemFree /proc/meminfo", intern=TRUE)
