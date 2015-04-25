list_tasks <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_", .ctype(type), "/list_tasks/", campaign), key = key)
}

list_worker_tasks <- function(campaign, worker, type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_", .ctype(type), "/list_tasks/", campaign, "_", worker), key = key)
}

get_task <- function(task, key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_b/get_task_info/", task), key = key)
}

get_proof_file <- function(task, key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_b/download_file_proof/", task), key = key)
}
