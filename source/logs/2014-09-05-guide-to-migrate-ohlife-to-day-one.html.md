---
title: Guide to migrate OhLife entries to DayOne
date: 2014-09-05
tags: life
---

  

This is a step-by-step guide to migrate your OhLife entries into DayOne. It’s text only because of the limitation of format OhLife exported.

## Prepare

You need the exported text entries from OhLife. The service is generating the archive for every user. You can download the archive from the header of OhLife. The archive contains photos and a text file. The text file is what we need.

!()[/thoughts/ohlife-0.png]

You will need the Terminal app to perform the task. That’s just several short commands that I’ll guide you through them. You can launch the the “Terminal” via spotlight or LaunchPad.

!()[/thoughts/ohlife-1.png]

Also please make sure you backup your DayOne entries just in case anything go wrong.

## Steps

1) Get the script from the following [code repo][1] by [BooneJS], by clicking “Download as zip”

[https://github.com/BooneJS/OhLife2DayOne][1]

!()[/thoughts/ohlife-2.png]

2) Download the CLI, Command-line interface, from the official [DayOne support website][2].

[http://dayoneapp.com/tools/][2]

!()[/thoughts/ohlife-3.png]

The direct download link to the CLI package:
[http://dayoneapp.com/downloads/dayone-cli.pkg][3]

3) Install the downloaded package.

!()[/thoughts/ohlife-4.png]

Note: If you want to ensure the CLI is properly installed, you can type the following command in Terminal app and it should output a help screen.

```bash
dayone
```

!()[/thoughts/ohlife-5.png]


4) Make the downloaded migration script executable via the following command. (You can ensure the path is correct by dragging the file directly into the Terminal)

```bash
chmod +x /Users/makzan/Downloads/OhLife2DayOne-master/ohlife2dayone.pl 
```

Take a look at the following video on how to avoid typing the long path of the script file.

<iframe src="//player.vimeo.com/video/107215645?color=f8cf1f" width="100%" height="417" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

Note: This is a protection in Mac OS X that prevents any good or evil script executes before having your permission.

5) Finally, the real migration step. 

This is the pattern of the command.

```bash
cat <Path to OhLife Export File> | <Downloaded Script> 
```

This is the command with file paths that works in my computer.

```bash
cat /Users/makzan/Downloads/export_2014-09-22.txt | /Users/makzan/Downloads/OhLife2DayOne-master/ohlife2dayone.pl 
```

The path to the files depends on where you store them in your computer. You can ensure a correct path by dragging the target file directly into the Terminal.

Take a look at the following video on how I write the command by combining typing and drag-n-drop.

<iframe src="//player.vimeo.com/video/107215646?color=f8cf1f" width="100%" height="423" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

## Done

After the long progress, which depends on your amount of OhLife entries, the script stops. At this moment your OhLife entries should be in DayOne.

![](/images/thoughts/ohlife-6.png)

## Updated (2014-09-28):

I wrote a [script][4] to import the exported photos as entries in DayOne.

[https://github.com/makzan/OhLifePhotos2DayOne][4]

The steps to use the photo importing script.

1. Copy the `OhLifePhotos2DayOne.rb` script file to the OhLife exported folder.
2. Open terminal, execute: `cd <Path of the OhLife exported folder>`. <small>(Note, you can drag the folder to terminal instead of typing the path yourself)</small>
3. Execute the command `ls -m img_*` and you should see a list of photo files. This is to ensure we have the photos ready.
4. Execute the command `ls -m img_* | ruby OhLifePhotos2DayOne.rb` and the importing starts until the commnd stops.

The following video shows how I imported the exported photos by using the script.

<iframe src="//player.vimeo.com/video/107388435?color=f8cf1f" width="100%" height="471" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[BooneJS]: https://twitter.com/BooneJS
[1]: https://github.com/BooneJS/OhLife2DayOne
[2]: http://dayoneapp.com/tools/
[3]: http://dayoneapp.com/downloads/dayone-cli.pkg
[4]: https://github.com/makzan/OhLifePhotos2DayOne

