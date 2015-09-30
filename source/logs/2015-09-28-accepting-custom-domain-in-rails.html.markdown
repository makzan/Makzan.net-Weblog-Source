---
title: Accepting Custom Domain in Rails
date: 2015-09-28
tags: web-design, rails, web-clip
---

Link: [Adding Support for Custom Domains in Rails](http://kyle.conarro.com/rails-custom-domain-support)

> There are three main steps necessary for adding custom domain support to your Rails project:
>
> 1. Have your users add a CNAME record pointing their domain to yours
> 2. Update your routes to handle any custom domains.
> 3. Add the controller logic to find resources using the custom domain
> 
> For this example, let’s assume your user wants to use their domain at `blog.company.com` to point to their blog hosted on your Rails app at `myapp.com/blogs/:id`.

I clip this down for use in my upcoming page generator. It is based on Rails and will allow custom domain to point to the service.