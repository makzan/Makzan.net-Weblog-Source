---
title: CSS Quantity Selector
date: 2015-03-12
tags: web-design
---

The [Quantity Queries for CSS][53541] essay from A List Apart shows how we can use current CSS selectors to perform quantity queries. By using the techniques in the essay, we can apply styles when the element count matches specific number, or when the element count is greater or smaller than the specific number.

![Demonstrating nav showing 2 items, 3 items and 4 items with different font size](http://cl.ly/image/0C0A3A2N1p3I/Screen%20Shot%202015-03-11%20at%208.35.35%20PM.png)

I created [a demonstration][53542] on how this technique can be used in navigation. The font size is smaller when there are more items in the list. Imagine when the navigation items are controlled from a CMS and we have no control on exactly how many items there will be. This technique allows us to control the styles of an unknown amount of items.

[53541]: http://alistapart.com/article/quantity-queries-for-css
[53542]: http://codepen.io/makzan/pen/azRZQx

