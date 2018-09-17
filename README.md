# elevation-service-heroku

A Heroku wrapper around [elevation-service](https://github.com/perliedman/elevation-service).

# Issues

Apps on Heroku get an [ephemeral filesystem](https://devcenter.heroku.com/articles/dynos#ephemeral-filesystem), so all the cached SRTM elevation data is regularly discarded.

# Installation

1. https://devcenter.heroku.com/articles/getting-started-with-nodejs
1. `heroku config:set MAX_POST_SIZE=5mb`

