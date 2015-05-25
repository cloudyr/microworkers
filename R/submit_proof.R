submit_proof <- function(campaign, worker, ip, proof, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    a <- paste0("?proof=", proof, "&ip=", ip, "&user_id=", worker)
    mwPUT(path = paste0("/campaign_", .ctype(type), "/submit_proof/", campaign, a), key = key)
}
