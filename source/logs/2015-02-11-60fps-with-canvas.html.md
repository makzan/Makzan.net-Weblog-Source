---
title: 60 fps on mobile web with canvas
date: 2015-02-11
tags: web-design
---


The flipboard team [takes the canvas approach to render their content in order to archive the 60fps drag and scroll][2]. They even built a tool–[React-Canvas][1]–to paint React rendered DOM into canvas.

The result is fast and smooth, but I question if we worth to trade the accessibility with the performance. Especially its performance for visual effect, not for the core content displaying.

[1]: https://github.com/flipboard/react-canvas
[2]: http://engineering.flipboard.com/2015/02/mobile-web/

