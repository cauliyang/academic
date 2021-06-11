---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Cofiguration of My Mac"
subtitle: "详细记录如何从头配置一台生产力工具"
summary: "记录如何配置我的mac并分享我使用的工具"
authors: ["admin"]
tags: ["configuration"]
categories: ["mac"]
date: 2021-06-10T13:38:00+08:00
lastmod: 2021-06-10T13:38:00+08:00
featured: true 
draft: true
include_toc: true
# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  placement: 0
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/)'
  focal_point: "Center"
  preview_only: false


#   Uncomment and edit lines below to show custom links.
# links:
#  - name: dot-files
#    url: https://github.umn.edu/LI002252/CS5525-Project.git
#    icon_pack: fab
#    icon: github

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []

---
<!-- {{% callout note %}}
All configuration or dot files are store in the Github, you can click Icon above to check that.
{{% /callout %}} -->

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [1. 应用和工具](#1-应用和工具)
  - [1.1 系统环境](#11-系统环境)
- [2. Editor](#2-editor)
- [3. Application](#3-application)

<!-- /code_chunk_output -->

## 1. 应用和工具

最近把我手边的mac还原一下系统，索性记录一下我如何从头配置我的生产力工具。首先我将展现我所用的应用和工具， 每一个应用和工具都会有一个简单都描述。如果你对某一个应用感性起，可以点击我预留对链接进行更加详细的了解。 

### 1.1 系统环境

* [Homebrew](https://brew.sh/)

Homebrew 是一个重要的工具用来在mac中进行软件和包的管理， 类似与“应用管理”。 它能够帮助我们下载和卸载工具更加有效率。如果你想了解更多的信息，可以点击上方的链接直达官网。

* [iterm2](https://iterm2.com/)  

iTerm2 是一个mac中原生终端的替代。它给终端带来了更多特色和功能， 并且iTerm2整合 [tmux](https://github.com/tmux/tmux/wiki)。 tmux 是一个终端复用工具， 它可以让你在  is a replacement for Terminal and the successor to iTerm. It works on Macs with macOS 10.14 or newer. iTerm2 brings the terminal into the modern age with features you never knew you always wanted. Also, iterm2 has integrated , you can try to use **tmux**, which is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background), and reattach them to a different terminal.

If you usually work on a remote server, it is a good idea to use **tmux** in the remote server. That will help you keep the connection in case you lose control of the current shell in which you are working. There is a tip,  you can add `ssh -t user@hostname "tmux attach -t coding01 || tmux new -s coding01"`. Then, you will connect the shell you have worked on last time when you log in to the remote server. If you never heard **tmux**, you can click the link above to learn how to use it. I will also write a blog to show how I use **tmux**, please check my blogs.

* [zsh](https://ohmyz.sh/)  

Zsh is an alternative to Bash, and it has more advanced features. Oh My Zsh is a delightful, open-source, community-driven framework for managing your Zsh configuration. It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout. The screenshot of my terminal is shown in the figure below. 
![gos](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210610155159.png)  

You can customize your own terminal, which will improve working efficiency. I use several useful plugins, you can learn how to config **Oh my zsh** in <font color=red size=5>the blog</font>

* [vim](https://vimawesome.com/) 

Vim is an editor used in the terminal, and I almost use it every day. Vim is shipped with Mac OS, and you also install other vim-extended editors such as [neovim]() and [spacevim](). For me, I usually use the basic Vim with a relatively simple configuration. The [Github-repo](https://github.com/amix/vimrc) store basic and awesome configuration. You can choose what you like to make your vim fancier.  

* [git](https://git-scm.com/) 

Git is a free and open-source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Also, Git a t tool used in the terminal to download and upload data or code to the [Github]. Similarly, Git is shipped with Mac OS so you may need to update that by `brew upgrade git`. What is more, **Oh my zsh** provides some alias and plugins, which help us to use git  easily. 

* [conda](https://docs.conda.io/en/latest/) 

Conda is a package, dependency, and environment management for any language such as *Python*, *R*, *Ruby*, *C/C++*, and more. Conda is an open-source package management system and environment management system that runs on Windows, macOS, and Linux. Conda quickly installs, runs, and updates packages and their dependencies. Conda easily creates, saves, loads, and switches between environments on your local computer. It was created for Python programs, but it can package and distribute software for any language. 

In addition, I recommend that you use [mamba](https://mamba.readthedocs.io/en/latest/) to wrap **Conda** to accelerate running speed. 

* [tldr](https://tldr.sh/)

The TLDR pages are a community effort to simplify the beloved man pages with practical examples. You can get uasage clearly and quickly by using `tldr` compared to `man`. In mac, you can install that by `brew install tldr`.  

![](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210610190712.png)

* [tree](https://www.geeksforgeeks.org/tree-command-unixlinux/)

**tree** is a recursive directory listing program that produces a depth-indented listing of files. With no arguments, tree lists the files in the current directory. When directory arguments are given, tree lists all the files or directories found in the given directories each in turn. Upon completion of listing all files and directories found, tree returns the total number of files. You can install that by `brew install tree`. 

![](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210610190826.png) 

## 2. Editor    

I will list the editors I used in different situations. If you have any other recommendations, please reach to me!  

* [Vscode](https://code.visualstudio.com/)  
  
*Vscode* is an open-source editor, and I mainly use *Vscode* to write *Markdown*, *Latex*, and *RST*. Some simple modifications of the project for *Python* and *C/C++* will happen in *Vscode*. There are lots of extensions to help you achieve your goals. 

* [pycharm](https://www.jetbrains.com/pycharm/)  

*Pycharm* is my main editor when I develop tools or applications in *Python*. I use *EDU* email to apply for the professional version.

* [CLion](https://www.jetbrains.com/clion/)  

*CLion* is my *C/C++* IDE, which includes many features like code generation, code quality assurance. I use *EDU* email to apply for the professional version.

* [Kite](https://www.kite.com/)  

*Kite* adds AI-powered code completions to your code editor, giving developers superpowers. I use *Kite* to empower *Vscode*, *Pycharm*, *Vim*, and *CLion*.

## 3. Application  

This part list variety of applications used for different goals. Every application has a simple description.  

- Alfred 4  
  A tool can give your different control and efficiency in mac.  

- Amphetamine

  Amphetamine can prevent your device from sleeping.  

- CleanMyMac x
  CleanMyMac is used to remove garbage and uninstall applications.  


- Default Folder x  
  A tool can empower default finder. 

- Docker 
  Docker is a tool to create a safe environment for development or production. 
  
- Chrome 
 
- IINA   
 
  A tool is used to play video.
  
- Imagine   

  A tool is used to compress images.
  
- IRightMouse Pro 

  A tool is used to empower the right click of the mouse.
  
- LICEcap 

  A tool is used to create gifs.  

- Magnet 

  A tool is used to manage windows for different applications.

- Office

- MonitorControl

  A tool is used to manage brightness and sound for different monitors.

- Monodraw

  A tool is used to design fancy ASCII strings.

- Mountain Duck 
  
  A tool is used to mount *Cloud* or *Google Drive* in local devices.

- Paper 

  A tool is used to change the Desktop background. 

- PDF Expert 
  
  A tool is used to edit and read PDF. 
  
- PicGo  

  A tool is used to upload images to *Web service* like *Github*. It is beneficial for writing blogs. 

- Pixel mator Pro 

  A tool is used to modify images.
  
- R Studio 

  An IDE for the R language.

- SnippetsLab 

  A tool is used to keep code snippets. 

- Xcode 
  
  A tool is used for development. 
  
- zoom 

- igv 
