---
title: keyup event and Chinese input in mobile Safari
date: 2015-10-02
tags: web-design
---

A student of mine asked me this question when he is making an input text filtering with Chinese content. The user needs to input some text to filter the content. Here is his original code:

```javascript
$("#search").bind('keyup', function() { ... }
```

In Chinese input, we often compose one block character by composing strokes. When typing Chinese text in `<input>`, this last selection won’t fire the `keyup` event. For the event that user has selected a Chinese text, we listen to the [`input`](https://developer.mozilla.org/en-US/docs/Mozilla/Tech/XUL/Attribute/oninput) event:

```javascript
$("#search").bind('keyup input', function() { ... }
```

The input event fires when the text displayed in the `<input>` changes. So even the Chinese character doesn’t count as a `keyup`, it changes the input display and count as an `input` event.

What if we are just handling English character? Do we need the `input` event too?

We may still need the `input` event to target the value changes made by copy & paste string with right click, which obviously won’t count as `keyup`.