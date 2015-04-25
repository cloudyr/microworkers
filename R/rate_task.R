approve_task <- function(campaign, task, ok, comment, type = "basic", key = getOption("microworkers_key")) {
    a <- paste0("?id_task=", task, "&rating=OK")
    mwPUT(path = paste0("/campaign_", .ctype(type), "/rate_task/", campaign, a), key = key)
}

reject_task <- function(campaign, task, ok, comment, type = "basic", key = getOption("microworkers_key")) {
    if(missing(comment))
        stop("'comment' is required for rejection")
    a <- paste0("?id_task=", task, "&rating=NOK")
    mwPUT(path = paste0("/campaign_", .ctype(type), "/rate_task/", campaign, a), key = key)
}
