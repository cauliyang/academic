---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "A Wonderful Library You Must Not Know"
subtitle: "A Valuable and Useful Python Library I build"
summary: "A toolbox including a batch of useful commands for annoying tasks."
authors: ["admin"]
tags: ["Development"]
categories: ['Python']
date: 2021-12-03T00:03:50-06:00
lastmod: 2021-12-03T00:03:50-06:00
featured: false
draft: false


# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/)'
  focal_point: "Smart"
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
{{< toc >}}

## 1. Introduction

Many people have been asking for a toolbox of useful commands for their everyday tasks. I also wanted to build a toolbox for my own use,  and I also wanted to make it as easy as possible to use. Hence, I decided to build a toolbox for Python, which is a valuable tool for other people to use. I will add more commands to this toolbox as I find them useful in the future. Now, there is a command about [Google Driver][], which helps you to download files located on [Google Driver][]. Forget to say,  I call it **pybox** as it is a toolbox based on Python.

## 2. Installation

The library is available on [pypi][] so that you can install it with `pip` or `pip3` by typing `pip install pybox`. I also have plan to publish this librarcy on [Conda][] so that you can install it with `conda install pybox`. 

## 3. Usage

{{< figure src="https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20211203154400.png" caption="SceenShot" numbered="true"  width="600">}}

```bash
    pybox -h # show help 
```

```bash
    pybox gdriver -h # show help for Google Driver
```

## 4. TODO

I will add more commands to this toolbox as I find them useful in the future. What is more,  I would like to make sure the quality of the toolbox is high. I write some examples of commands. If you need something specific, please let me know. We can discuss about it.

## 5. Contributing

If you would like to contribute to this toolbox, please feel free to fork it on [GitHub][]. Please make sure you read the [contributing guide][] before you start. Also, please make sure you pass all the tests before you pull request.

<!-- link -->
[Google Driver]: https://drive.google.com/
[pypi]: https://pypi.org/project/pybox/
[Conda]: https://conda.io/
[Github]: https://github.com/cauliyang/pybox
[contributing guide]: https://github.com/cauliyang/pybox/blob/main/CONTRIBUTING.rst
