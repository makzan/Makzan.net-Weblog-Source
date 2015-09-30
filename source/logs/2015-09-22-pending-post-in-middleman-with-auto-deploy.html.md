---
title: Pending blog post for future in Middleman
date: 2015-09-22
tags: middleman
---

By using the [middleman-blog](https://github.com/middleman/middleman-blog) gem, the `middleman build` command won’t build posts that’s in the future timestamp.

By using the [periodically deploy script](/2015/09/19/periodically-deploying-middleman-static-site/). I can now set a pending post in my middleman source by setting a future date. I can preview the future post locally with `middleman server`. When everything is set, I just wait for the automatically deployment to deploy written-and-pending post when the date arrives.