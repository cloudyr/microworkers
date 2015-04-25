parse_response <- function(response) {
    stop_for_status(response)
    ct <- content(response, "text")
    if(grepl("API KEY WRONG", ct))
        stop("API key wrong")
    if(grepl("API NOT ENABLED", ct))
        stop("API not enabled")
    if(grepl("API ACCESS IP DENIED", ct))
        stop("API access IP denied")
    if(grepl("API FUNCTION DOESN'T EXIST", ct))
        stop("API function doesn't exist")
    out <- fromJSON(ct)
    if(out$status == "ERROR") {
        stop(out$error)
    }
    return(out)
}

mwGET <- function(path, key = getOption("microworkers_key", NULL)) {
    if(is.null(key))
        stop("'key' is missing with no default in options('microworkers_key')")
    r <- GET(paste0("https://api.microworkers.com", path), 
             add_headers(MicroworkersApiKey = key))
    parse_response(r)
}

mwPUT <- function(path, key = getOption("microworkers_key", NULL)) {
    if(is.null(key))
        stop("'key' is missing with no default in options('microworkers_key')")
    r <- PUT(paste0("https://api.microworkers.com", path), 
             add_headers(MicroworkersApiKey = key))
    parse_response(r)
}

mwPOST <- function(path, body, key = getOption("microworkers_key", NULL)) {
    if(is.null(key))
        stop("'key' is missing with no default in options('microworkers_key')")
    r <- POST(paste0("https://api.microworkers.com", path), 
              add_headers(MicroworkersApiKey = key), 
              body = body)
    parse_response(r)
}
