---
title: Gray highlight and active state in mobile Safari
date: 2015-03-18
tags: web-design, web-clip
---


Link: [CSS-Tricks: Remove Gray Highlight When Tapping Links in Mobile Safari][31]

This is a simple tricks but very useful if you’re trying to make a button in HTML looks like a real button in touch devices.

Remove the tap highlight:

```css
-webkit-tap-highlight-color: rgba(0,0,0,0);
```

and make the `:active` state works when user touches that element:

```css
document.addEventListener("touchstart", function(){}, true);
```

[31]: https://css-tricks.com/snippets/css/remove-gray-highlight-when-tapping-links-in-mobile-safari/

