# resample stuff

start.time <- Sys.time()
message(paste0("Starting code at ",start.time))

source("calculate_gaussian_mode.R")
source("calculate_posterior_draws.R")

message(paste0("Ending code at ",Sys.time()))

diff <- Sys.time() - start.time
message(paste0("Code ran for ",diff," seconds."))

Sys.info()
system("grep MemFree /proc/meminfo", intern=TRUE)
