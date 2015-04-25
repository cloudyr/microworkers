get_task <- function(key = getOption(task, "microworkers_key")) {
    mwGET(path = "/campaign_b/get_info", key = key)
}

get_proof <- function(task, key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_b/download_file_proof", task), key = key)
}
