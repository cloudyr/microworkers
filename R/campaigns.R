.ctype <- function(type) {
    switch(tolower(type), b = "b", basic = "b", 
                          hg = "hg", hiregroup = "hg", "hire group" = "hg", 
                          stop("Unrecognized campaign type"))
}

list_campaigns <- function(type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = "/campaign_", .ctype(type), "/list", key = key)
}

# list_extend

get_campaign <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_", .ctype(type), "/get_info/", campaign), key = key)
}

get_campaign_status <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_", .ctype(type), "/get_status/", campaign), key = key)
}

list_tasks <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_", .ctype(type), "/list_tasks/", campaign), key = key)
}

list_worker_tasks <- function(campaign, worker, type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_", .ctype(type), "/list_tasks/", campaign, "_", worker), key = key)
}

get_results <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_", .ctype(type), "/results_csv/", campaign), key = key)
}
