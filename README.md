# Microworkers.com R Client #

[![Build Status](https://travis-ci.org/leeper/microworkers.png?branch=master)](https://travis-ci.org/leeper/microworkers)

**microworkers** provides access to the [Microworkers](https://microworkers.com/) crowdsourcing platform.

## Installation ##

**microworkers** is [available on GitHub](http://github.com/leeper/microworkers) and can (soon) be installed from within R from your favorite CRAN mirror:

```R
install.packages("microworkers")
library("Rmonkey")
```

And the latest development version, available here, can be installed directly using  [devtools](http://cran.r-project.org/web/packages/devtools/index.html):

```R
if(!require("devtools")) {
    install.packages("devtools")
    library("devtools")
}
install_github("leeper/microworkers")
library("microworkers")
```

## Setup ##

To use microworkers, the user must have a Microworkers account, which automatically supplies an API access key. To use the API, however, you must contact [info@microworkers.com](mailto:info@microworkers.com) to gain API access.

Once everything is registered, your API key can be loaded into R using `options`:

```R
options(microworkers_key = 'YourAPIKey')
```

## Code Examples ##

Below are some code examples showing how to use the package.

### Create a Campaign ###

Coming soon...

### Modify a Campaign ###

Coming soon...

### Retrieve Tasks and Results ###

Coming soon...

### Approve or Reject Tasks ###

Coming soon...



[![cloudyr project logo](http://i.imgur.com/JHS98Y7.png)](https://github.com/cloudyr)
