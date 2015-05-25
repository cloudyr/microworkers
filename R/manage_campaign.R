add_positions <- function(campaign, positions, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    if(positions < 1)
        stop("'positions' must be a positive integer")
    mwPUT(path = paste0("/campaign_", .ctype(type), "/add_positions/", campaign, "?positions=", positions), key = key)
}

block_worker <- function(campaign, worker, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    if(.ctype(type) == "b")
        stop("Cannot set speed of 'Basic'-type campaign")
    mwPUT(path = paste0("/campaign_", .ctype(type), "/lock_task/", campaign, "?user_id=", worker), key = key)
}

stop_campaign <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    mwPUT(path = paste0("/campaign_", .ctype(type), "/stop/", campaign), key = key)
}

pause_campaign <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    mwPUT(path = paste0("/campaign_", .ctype(type), "/pause/", campaign), key = key)
}

resume_campaign <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    mwPUT(path = paste0("/campaign_", .ctype(type), "/resume/", campaign), key = key)
}

set_speed <- function(campaign, speed, key = getOption("microworkers_key")) {
    if(inherits(campaign, "mw_campaign"))
        campaign <- campaign$campaign_id
    if(!speed %in% 1:1000)
        stop("'speed' must be in within 1 and 1000")
    mwPUT(path = paste0("/campaign_b/set_speed/", campaign, "?speed=", speed), key = key)
}
