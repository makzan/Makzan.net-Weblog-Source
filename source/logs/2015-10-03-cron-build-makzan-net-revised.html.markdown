---
title: Cron build makzan.net (revised)
date: 2015-10-03
tags: makzan.net
---


When I setup this blog with [periodically building and deploying](/2015/09/19/periodically-deploying-middleman-static-site/), I used a local cron. Now I changed to use [WebTask](https://webtask.io) and [CodeShip](https://codeship.com) to automatically generate the static site and deploy on [Surge](https://surge.sh).

![webtask, middleman, surge](/images/logs/webtask-codeship-surge.png)

I changed the hosting service from [Github pages](https://pages.github.com) to [Surge.sh](https://surge.sh). Then I followed the [Integrating with Codeship](https://surge.sh/help/integrating-with-codeship) tutorial to setup the deployment. I made changes to make it build the middleman site as well.

Here is my `package.json` file:

```json
{
  "name": "makzan.net-weblog-build",
  "version": "1.0.0",
  "description": "Makzan.net Weblog Build",
  "devDependencies": {
    "surge": "^0.15.0"
  }
}
```


Here is the _Setup Command_:

```bash
rvm use 2.2.0 --install
bundle install
# Install the latest version of Node.js
nvm install stable
nvm use stable
# Install Surge as a devDependency
npm install
bundle exec middleman build
```

And the _Deployment Script_, which is a custom one:

	surge ./build www.makzan.net

Now the Codeship builds the middleman site and push to Surge.sh whenever I push the middleman source to the Git repo, which I host it on BitBucket.

For periodically building and deployment. I need to trigger the Codeship building process. I use WebTask for this task. It allows me to schedule a cron on their Backend-as-a-Service, which runs Node.js that I can call the Codeship building API.

Here is the JavaScript file that I install on the WebTask service.

`codeship-build-makzan-net.js` file:

```javascript
// Assume secret for CODESHIP_API_KEY.
module.exports = function (context, callback) {

  var http = require('https');

  var projectId = "<Your Project ID>";
  var apiKey = context.data.CODESHIP_API_KEY;

  var projectsUrl = "https://codeship.com/api/v1/projects/" + projectId + ".json?api_key=" + apiKey;

  var result = "";
  http.get(projectsUrl, function(res){
    res.on("end", function() {

      var projectData = JSON.parse(result);
      var lastBuildId = projectData["builds"][0]["id"];

      // callback(null, {result:lastBuildId});

      var buildUrl = {
        hostname: 'codeship.com',
        path: "/api/v1/builds/" + lastBuildId + "/restart.json?api_key=" + apiKey,
        port: 443,
        method: 'POST'
      };

      var postResult = '';
      http.request(buildUrl, function(response){
        response.on("end", function() {
          callback(null, {result:JSON.parse(postResult)});
        });
        response.on("data", function(data) {
          postResult += data.toString();
        });
      }).end();

    });
    res.on("data", function(data) {
      result += data.toString();
    });
  });
}
```

Here is the `wt` WebTask command that schedules the above JavaScript to run every hour. In addition, I can pass in the Codeship API key into the script file so I don’t need to store the key in plain text.

```bash
wt cron schedule -n codeship-build-makzan-net --secret CODESHIP_API_KEY=<PUT_API_KEY_HERE> "0 * * * *" codeship-build-makzan-net.js
```

Now whenever I write new essay and push the source to the Git repo, the Codeship hook automatically build the middleman and push to the static hosting service. When the article is set to a future date, the build process won’t immediately build that post. For every hour, the installed web task invokes the middleman building process and it build the pre-written posts when the time comes.