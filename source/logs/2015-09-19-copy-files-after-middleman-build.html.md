---
title: Configure files to copy without middleman building process
date: 2015-09-19
tags: middleman
---

While building the new makzan.net on top of [middleman](http://middlemanapp.com) site generator. I faced an issue that for certain files, I don’t want middleman to process it during the build process.

For example, I want to copy the [README.md](/README.md) without middleman compiling it into HTML file. I also need to copy [my HTML5 games](/html5-games/), [tweet archive](/tweets/) and some other stuff without going through the building process.

So I created a folder named `public`. Then use the following `after_build` command in `config.rb` to copy the files in public into the build folder after every [clean build](https://middlemanapp.com/basics/build_and_deploy/).

```ruby
after_build do |builder|
  FileUtils.cp_r 'public/.', 'build'
end
```