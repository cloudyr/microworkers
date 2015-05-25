.ctype <- function(type) {
    switch(tolower(type), b = "b", basic = "b", 
                          hg = "hg", hiregroup = "hg", "hire group" = "hg", 
                          stop("Unrecognized campaign type"))
}

list_campaigns <- function(type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaigns_", .ctype(type), "/list"), key = key)
}

search_campaigns <- 
function(status,
         folder,
         created_from,
         created_to,
         restarted_from,
         restarted_to,
         finished_from,
         finished_to,
         type = "basic", 
         key = getOption("microworkers_key")) {
    a <- list()
    if(!missing(status)) {
        status <- toupper(status)
        s <- c("BLOCKED","PENDING_REVIEW","PENDING_RESTART","PAUSED","PAUSED_ADMIN","RUNNING","PAUSED_SYSTEM","FINISHED")
        if(status %in% s) {
            a$status <- status
        } else{ 
            stop(paste0("'status' must be one of: ", paste0(s, collapse = ", ")))
        }
    }
    if(!missing(folder)) {
        folder <- toupper(folder)
        f <- c("DEFAULT","ARCHIVE")
        if(folder %in% f) {
            a$folder <- folder
        } else{ 
            stop(paste0("'folder' must be one of: ", paste0(f, collapse = ", ")))
        }
    }
    if(!missing(created_from)) {
        a$created_from <- created_from
    }
    if(!missing(created_to)) {
        a$created_to <- created_to
    }
    if(!missing(restarted_from)) {
        a$restarted_from <- restarted_from
    }
    if(!missing(restarted_to)) {
        a$restarted_to <- restarted_to
    }
    if(!missing(finished_from)) {
        a$finished_from <- finished_from
    }
    if(!missing(finished_to)) {
        a$finished_to <- finished_to
    }
    b <- paste0("?", paste0(names(a), "=", unname(unlist(a)), collapse = "&"))
    mwGET(path = paste0("/campaigns_", .ctype(type), "/list_extend", b), key = key)
}

get_campaign <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    mwGET(path = paste0("/campaign_", .ctype(type), "/get_info/", campaign), key = key)
}

get_campaign_status <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    mwGET(path = paste0("/campaign_", .ctype(type), "/get_status/", campaign), key = key)
}

get_results <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    g <- mwGET(path = paste0("/campaign_", .ctype(type), "/results_csv/", campaign), key = key)
    read.csv(g$csv, stringsAsFactors = FALSE)
}
