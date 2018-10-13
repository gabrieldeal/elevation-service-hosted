# elevation-service-hosted

A Docker, Heroku & Zeit Now wrapper around [elevation-service](https://github.com/perliedman/elevation-service).

# Issues

Apps on Heroku get an [ephemeral filesystem](https://devcenter.heroku.com/articles/dynos#ephemeral-filesystem), so all the cached SRTM elevation data is regularly discarded.

Heroku times out requests after 30 seconds, which can happen for large route files

# Installation

## Docker droplet on DigitalOcean

1. `docker run -d --restart always -p 80:8080 gggabrielx/elevation-service-hosted`
1. `sudo ufw allow http`

## Heroku

1. https://devcenter.heroku.com/articles/getting-started-with-nodejs
1. `heroku config:set MAX_POST_SIZE=5mb`

## Zeit Now

1. Update `MAX_POST_SIZE` in `now.json`
2. https://zeit.co/docs/getting-started/deployment#node.js-deployment
  1. `now`
  2. `now alias https://elevation-service-hosted-dgfayvtrxs.now.sh elevation-service-hosted`
