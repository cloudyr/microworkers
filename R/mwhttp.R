mwGET <- function(path, key = getOption("microworkers_key", NULL)) {
    if(is.null(key))
        stop("'key' is missing with no default in options('microworkers_key')")
    r <- GET(paste0("https://api.microworkers.com", path))
    stop_for_status(r)
    out <- content(r)
    if(out$status == "ERROR") {
        stop(out$error)
    } else {
        return(out)
    }
}

mwPUT <- function(path, key = getOption("microworkers_key", NULL)) {
    if(is.null(key))
        stop("'key' is missing with no default in options('microworkers_key')")
    r <- PUT(paste0("https://api.microworkers.com", path), add_headers(MicroworkersApiKey = key))
    stop_for_status(r)
    out <- content(r)
    if(out$status == "ERROR") {
        stop(out$error)
    } else {
        return(out)
    }
}

mwPOST <- function(path, body, key = getOption("microworkers_key", NULL)) {
    if(is.null(key))
        stop("'key' is missing with no default in options('microworkers_key')")
    r <- POST(paste0("https://api.microworkers.com", path), 
              add_headers(MicroworkersApiKey = key), 
              body = body)
    stop_for_status(r)
    out <- content(r)
    if(out$status == "ERROR") {
        stop(out$error)
    } else {
        return(out)
    }
}
