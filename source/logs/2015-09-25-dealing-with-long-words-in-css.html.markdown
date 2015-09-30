---
title: Dealing with long words in CSS
date: 2015-09-25
tags: web-design, web-clip
---

Link: [Dealing with long words in CSS](https://justmarkup.com/log/2015/07/31/dealing-with-long-words-in-css/)

> Final solution
>
>     .hyphenate
>       overflow-wrap: break-word;
>       word-wrap: break-word;
>       -webkit-hyphens: auto;
>       -ms-hyphens: auto;
>       -moz-hyphens: auto;
>       hyphens: auto;
>     }
>
> This solution will show hyphens for every browser supporting it and will break lines in every other browser – perfect.

This is a useful technique when you need to deal with long words in your web design. For example, when you need to reference a [long city name](https://m.youtube.com/watch?feature=youtu.be&v=fHxO0UdpoxM).