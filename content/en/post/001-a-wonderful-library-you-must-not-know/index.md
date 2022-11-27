---
# Documentation: https://wowchemy.com/docs/managing-content/

title: A Python Toolbox - Pybox
subtitle: A Valuable and Useful Python Library I build
summary: A toolbox including a batch of useful commands for annoying tasks.
authors: [admin]
tags: [Development]
categories: [Python]
date: 2021-12-03T00:03:50-06:00
lastmod: 2022-11-28T00:03:50-06:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: 'Image credit: [**Pixilart**](https://www.pixilart.com/)'
  focal_point: Smart
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
toc: true

links:
  - name: GitHub
    url: https://github.com/cauliyang/pybox
    icon_pack: fab
    icon: github
---


## 1. Introduction

Many people have been asking for a toolbox of useful commands for their everyday tasks.
I also wanted to build a toolbox for my own use, and I also wanted to make it as easy as possible to use.
Hence, I decided to build a toolbox for Python, which is a valuable tool for other people to use.
I will add more commands to this toolbox as I find them useful in the future.
Now, there is a command about [Google Driver], which helps you to download files located on [Google Driver].
Also, this toolbox includes other features shown below.
Forget to say, I call it **pybox** as it is a toolbox based on Python.

## 2. Installation

The library is available on [pypi] so that you can install it with `pip` or `pip3` by typing `pip install pyboxes`.
I also have plan to publish this library on [Conda] so that you can install it with `conda install pyboxes`.

## 3. Usage

```bash
$ pybox -h # show help
Usage: pybox [options] <command>

  This tool include a bunch of useful commands:

  1. Download single file or all files in a folder for Google Driver
  2. Send message to Slack
  3. more to come...

Options:
  -h, --help  Show this message and exit.

Commands:
  asyncdown  Download files in terms of links asynchronously.
  gfile      Download file in Google Driver.
  gfolder    Download files in folders in Google Drive.
  slack      Send message to Slack.

  Yangyang-Li https://yangyangli.top/ 2022
```

## 4. Features

- [A simple and easy to download files by sharing link]
- [A simple and easy to send message to Slack Channel]
- [Download multiple files asynchronously]
- Download Books from Zlib in terms of Title Will come!

I will add more commands to this toolbox as I find them useful in the future.
What is more, I would like to make sure the quality of the toolbox is high.
I write some examples of commands.
If you need something specific, please let me know. We can discuss it.

## 5. Contributing

If you would like to contribute to this toolbox, please feel free to fork it on [GitHub].
Please make sure you read the [contributing guide] before you start.
Also, please make sure you pass all the tests before you pull request.

<!-- link -->
[conda]: https://conda.io/
[contributing guide]: https://github.com/cauliyang/pybox/blob/main/CONTRIBUTING.md
[github]: https://github.com/cauliyang/pybox
[google driver]: https://drive.google.com/
[pypi]: https://pypi.org/project/pyboxes/
[a simple and easy to download files by sharing link]: https://github.com/cauliyang/pybox#a-simple-and-easy-to-download-files-by-sharing-link
[a simple and easy to send message to slack channel]: https://github.com/cauliyang/pybox#a-simple-and-easy-to-send-message-to-slack-channel
[download multiple files asynchronously]: https://github.com/cauliyang/pybox#download-multiple-files-asynchronously