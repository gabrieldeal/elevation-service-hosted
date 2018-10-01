# elevation-service-hosted

A Heroku & Zeit Now wrapper around [elevation-service](https://github.com/perliedman/elevation-service).

# Issues

Apps on Heroku get an [ephemeral filesystem](https://devcenter.heroku.com/articles/dynos#ephemeral-filesystem), so all the cached SRTM elevation data is regularly discarded.

Heroku times out requests after 30 seconds, which can happen for large route files

# Installation

## Heroku

1. https://devcenter.heroku.com/articles/getting-started-with-nodejs
1. `heroku config:set MAX_POST_SIZE=5mb`

## Zeit Now

1. Update `MAX_POST_SIZE` in `now.json`
2. https://zeit.co/docs/getting-started/deployment#node.js-deployment
  1. `now`
  2. `now alias https://elevation-service-hosted-dgfayvtrxs.now.sh elevation-service-hosted`
