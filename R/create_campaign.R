basic_campaign <- 
function(title,
         work,
         work_file,
         proof,
         proof_file,
         duration,
         positions,
         payment,
         speed,
         zone = "int",
         countries,
         category,
         ttr,
         autorate,
         key = getOption("microworkers_key")) {
    b <- list()
    b$title <- title
    b$required_work <- work
    b$required_proof <- proof
    b$available_positions <- positions
    b$minutes_to_finish <- duration
    if(!speed %in% 1:1000)
        stop("'speed' must be in within 1 and 1000")
    b$speeed <- speed
    b$payment_per_task <- payment
    if(!ttr %in% 1:30)
        stop("'ttr' must be in days (within 1 and 30)")
    b$ttr <- ttr
    if(!autorate %in% c("NO", "V", "V+R"))
        stop("'autorate' must be one of 'NO', 'V', or 'V+R'")
    b$auto_rate <- autorate
    b$category <- category
    z <- c("asia1","caribbean1","europe1","europe2","west1","int")
    if(!zone %in% z) {
        stop("'zone' must be one of: ", paste0(z, collapse = ", "))
    } else {
        b$zone <- zone
        if(zone == "int" && !missing(countries))
            b$selected_countries <- paste0(countries, collapse = " ")
    }
    if(!proof_file %in% c(0,1,2))
        stop("'proof_file' must be one of 0 (not required), 1 (optional), or 2 (required)")
    b$proof_file <- proof_file
    
    # work_file
    
    mwPOST(path = "/campaign_b/new_campaign/", 
           body = b,
           key = key)
}

hiregroup_campaign <- 
function(title,
         work,
         work_file,
         csv,
         proof,
         proof_file,
         duration,
         positions,
         positions_per_worker,
         payment,
         hiregroup,
         category,
         ttr,
         autorate,
         key = getOption("microworkers_key")) {
    b <- list()
    b$title <- title
    b$required_work <- work
    b$required_proof <- proof
    b$available_positions <- positions
    b$minutes_to_finish <- duration
    b$payment_per_task <- payment
    b$group_id <- hiregroup
    if(!ttr %in% 1:30)
        stop("'ttr' must be in days (within 1 and 30)")
    b$ttr <- ttr
    if(!autorate %in% c("NO", "V", "V+R"))
        stop("'autorate' must be one of 'NO', 'V', or 'V+R'")
    b$auto_rate <- autorate
    b$category <- category
    if(!proof_file %in% c(0,1,2))
        stop("'proof_file' must be one of 0 (not required), 1 (optional), or 2 (required)")
    b$proof_file <- proof_file
    
    # work_file
    
    # csv
    if(missing(csv)){
        b$description_type  <- "SAME"
    } else {
        b$description_type  <- "UNIQUE"
#        b$csv <- 
    }
    
    mwPOST(path = "/campaign_hg/new_campaign/", 
           body = b,
           key = key)
}

zones <- function(type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_", .ctype(type), "/zones_list"), key = key)$zones
}

categories <- function(type = "basic", key = getOption("microworkers_key")) {
    mwGET(path = paste0("/campaign_", .ctype(type), "/categories_list"), key = key)$parent_categories
}
