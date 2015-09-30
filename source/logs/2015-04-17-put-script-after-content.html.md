---
title: Put script after content
date: 2015-04-17
tags: web-design
---


By default, we should put the script tag after our content. It usually means putting them just before the closing of the body tag.

The reason is that browser stops loading when it encounters a script tag. If we put the script after content, we let all the content loads and displays before we pause the loading for the script tag. Moreover, we usually access the HTML elements inside our script. This means wherever we place the script, we still need to wait for the content to be loaded.

There is rare cases that the script needs to be executed before the browser loads the content. We put these types of script in the head tag. For example, the following MixPanel instructs web designers to put the script before the closing of the head tag.

![mixpanel screenshot](https://dl.dropboxusercontent.com/u/3079250/public%20for%20makzan.net/Screen_Shot_2015-03-10_at_10.54.53_AM.png)

You can find more on this in [Yahoo’s developer guide][872].

[872]: https://developer.yahoo.com/performance/rules.html#js_bottom

