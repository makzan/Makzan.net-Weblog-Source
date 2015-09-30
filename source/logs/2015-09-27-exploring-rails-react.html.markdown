---
title: Exploring Rails-React
date: 2015-09-27
tags: rails, react, web-design
---

I’m going to explore the [Rails-React](https://github.com/reactjs/react-rails) way to create my next web app. You may call me traditional, but I still don’t think [pure client-side framework](/2015/09/24/stop-breaking-the-web/) is a good idea. I’m going to use the server to pre-render the React result to the client.

When user interacts on the web app. If the client is capable to run ReactJS locally, React renders further changes. Otherwise, in old browser, it will just send another request to server and server returns another pre-rendered view.

I’ll keep my exploration log [here](/tags/react/).

