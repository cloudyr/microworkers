list_tasks <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    mwGET(path = paste0("/campaign_", .ctype(type), "/list_tasks/", campaign), key = key)$tasks
}

list_worker_tasks <- function(campaign, worker, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    mwGET(path = paste0("/campaign_", .ctype(type), "/list_tasks/", campaign, "_", worker), key = key)$tasks
}

get_task <- function(task, key = getOption("microworkers_key")) {
    if(inherits(task, "mw_task"))
        task <- task$task_id
    g <- mwGET(path = paste0("/campaign_b/get_task_info/", task), key = key)
    structure(g, class = "mw_task")
}

get_proof_file <- function(task, path, key = getOption("microworkers_key")) {
    if(inherits(task, "mw_task"))
        task <- task$task_id
    f <- GET(paste0("https://api.microworkers.com/campaign_b/download_file_proof/", task), 
             add_headers(MicroworkersApiKey = key))
    bin <- content(f, as = "raw")
    if(missing(path))
        writeBin(bin, path)
    return(invisible(bin))
}
