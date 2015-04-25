add_positions <- function(campaign, positions, type = "basic", key = getOption("microworkers_key")) {
    if(.ctype(type) == "hg")
        stop("Cannot set speed of 'Hire Group'-type campaign")
    mwPUT(path = paste0("/campaign_", .ctype(type), "/add_positions/", campaign, "?positions=", positions), key = key)
}

block_worker <- function(campaign, worker, type = "basic", key = getOption("microworkers_key")) {
    if(.ctype(type) == "b")
        stop("Cannot set speed of 'Basic'-type campaign")
    mwPUT(path = paste0("/campaign_", .ctype(type), "/lock_task/", campaign, "?user_id=", worker), key = key)
}

stop_campaign <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    mwPUT(path = paste0("/campaign_", .ctype(type), "/stop/", campaign), key = key)
}

pause_campaign <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    mwPUT(path = paste0("/campaign_", .ctype(type), "/pause/", campaign), key = key)
}

resume_campaign <- function(campaign, type = "basic", key = getOption("microworkers_key")) {
    mwPUT(path = paste0("/campaign_", .ctype(type), "/resume/", campaign), key = key)
}

set_campaign_speed <- function(campaign, speed, type = "basic", key = getOption("microworkers_key")) {
    if(.ctype(type) == "hg")
        stop("Cannot set speed of 'Hire Group'-type campaign")
    mwPUT(path = paste0("/campaign_", .ctype(type), "/resume/", campaign, "?speed=", speed), key = key)
}
