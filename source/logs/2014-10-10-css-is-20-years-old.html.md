---
title: CSS is 20 years old
date: 2014-10-10
tags: web-design, css
---


CSS is [20 years old][1] today.

From [Cascading HTML style sheets -- a proposal][1] – [W3.org]:

> This document proposes a style sheet scheme for HTML documents. The proposed scheme provides a simple mapping between HTML elements and presentation hints. Properties like font family and window size can be suggested by the style sheet...

The proposal used wording like _‘hints’_ and _‘suggest’_ to describe CSS. I believe it is because HTML is a document containing all information the reader needs. CSS, on the other hand, maps the HTML elements and provide extra, yet optional, styling preferences.

> Properties like font family and window size can be suggested by the style sheet, and it can also provide logic to make presentation decisions based on the user’s environment; e.g. the size of the screen or the current date.

20 years ago, the proposal suggested clearly that CSS could provide **decisions based on the user’s environment**. Web design is not the same as print design because the web page can be displayed every where in different environments. We had media queries [for a long while][2] but not until recently that responsive web design becomes a trend.

> The style sheet scheme is designed so that style sheets can be cascaded; the user/browser specifies initial preferences and hands the remaining influence over to the style sheets referenced in the incoming document. This will provide publishers with stylistic influence without resorting to page description languages.

This is the main idea of the CSS. All the styling rules are cascaded. We can have global styles defined and then overide them for specific cases. Know the [priority of CSS rules][3] makes you a better web designer.

[1]: http://www.w3.org/People/howcome/p/cascade.html
[2]: http://caniuse.com/#feat=css-mediaqueries
[3]: /web-design-scrapbook/css-rules-priority/
[W3.org]: http://www.w3.org
