---
title: Periodically deploying Middleman static site
date: 2015-09-19
tags: middleman
---

The new [makzan.net](http://makzan.net) is built on top of [Middleman](https://middlemanapp.com) static site generator. Then I deploy the site as a Github pages.

I use `middleman-deploy` gem to setup the Github pages deployment, which I follow their default setting:

```ruby
activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
end
```

I use [Cloud9](http://c9.io) for development and run the following cron job hourly.

```bash
5 * * * * /project_path/build_and_deploy.sh > /project_path/cron.log 2>&1
```

In which, the `build_and_deploy.sh` executes the `middleman deploy` command under the project folder.

```bash
!/usr/bin/env bash

source /usr/local/rvm/environments/ruby-2.2.1
source /home/ubuntu/.nvm/nvm.sh

cd /project_path

middleman deploy
```

The `source` is to make the `rvm` and `node` environment works from the cron environment.

