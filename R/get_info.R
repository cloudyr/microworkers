account_info <- function(key = getOption("microworkers_key")) {
    mwGET(path = "/account/get_info/", key = key)
}
