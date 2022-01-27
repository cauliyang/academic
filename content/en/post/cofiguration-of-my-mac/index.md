---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "The Best Mac Apps Makes Life Easier"
subtitle: "Concrete description about how to config my mac"
summary: "Lots of macos application that empower my life"
authors: ["admin"]
tags: ["tool"]
categories: ["macos"]
date: 2021-11-10T13:38:00+08:00
lastmod: 2021-11-10T13:38:00+08:00
featured: true 
draft: false
include_toc: true
# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  placement: 0
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/)'
  focal_point: "Center"
  preview_only: true

# header:
#   image: "featured.jpeg"
#   caption: "test"
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

{{< toc >}}

## 1. Introduction

My new M1  Macbook Pro is a powerful machine, and I am very happy to use it. Also, many powerful tools make my life easier.
Here is a list of tools I use:

{{< figure src="https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/iShot2021-11-27%2022.26.58.png" caption="Page 1" numbered="true"  width="500">}}
{{< figure src= "https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/iShot2021-11-27 22.27.07.png" caption="Page 2" numbered="true" width="500" >}}
{{< figure src= "https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/iShot2021-11-27 22.27.14.png" caption="Page 3" numbered="true" width="500" >}}

## 2.  System Environment  Tools

The first part will show the applications and tools I used for production, and every app or tool has a simple description. If you have an interest in a certain app, you can click the link I leave to get more information.  

- [Homebrew](https://brew.sh/)

Homebrew is an important tool for package manager in mac, which help you download and uninstall applications or tools efficiently. For detailed information, please click the link above to check that.  

- [iterm2](https://iterm2.com/)  

iTerm2 is a replacement for Terminal and the successor to iTerm. It works on Macs with macOS 10.14 or newer. iTerm2 brings the terminal into the modern age with features you never knew you always wanted. Also, iterm2 has integrated [tmux](https://github.com/tmux/tmux/wiki), you can try to use **tmux**, which is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background), and reattach them to a different terminal.

If you usually work on a remote server, it is a good idea to use **tmux** in the remote server. That will help you keep the connection in case you lose control of the current shell in which you are working. There is a tip,  you can add `ssh -t user@hostname "tmux attach -t coding01 || tmux new -s coding01"`. Then, you will connect the shell you have worked on last time when you log in to the remote server. If you never heard **tmux**, you can click the link above to learn how to use it.  In addition,  [Tmuxinator](https://github.com/tmuxinator/tmuxinator) is great choice to empower **tmux**

- [zsh](https://ohmyz.sh/)  

Zsh is an alternative to Bash, and it has more advanced features. Oh My Zsh is a delightful, open-source, community-driven framework for managing your Zsh configuration. It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout. The screenshot of my terminal is shown in the figure below.
![gos](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210610155159.png)  

You can customize your own terminal, which will improve working efficiency.  Also, there are many plugins you can use to imporce your working efficiency.

- [vim](https://vimawesome.com/)

Vim is an editor used in the terminal, and I almost use it every day. Vim is shipped with Mac OS, and you also install other vim-extended editors such as [neovim](https://neovim.io/) and [spacevim](https://www.google.com/search?q=spacevim).  Currently, I use [LunarVim](https://github.com/LunarVim/LunarVim),  an
opinionated, extensible, and fast IDE layer for NeoVim. I think it is so cool and powerful.

- [git](https://git-scm.com/)

Git is a free and open-source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Also, Git a t tool used in the terminal to download and upload data or code to the *Github*. Similarly, Git is shipped with Mac OS so you may need to update that by `brew upgrade git`. What is more, **Oh my zsh** provides some alias and plugins, which help us to use git  easily.

- [conda](https://docs.conda.io/en/latest/)

Conda is a package, dependency, and environment management for any language such as *Python*, *R*, *Ruby*, *C/C++*, and more. Conda is an open-source package management system and environment management system that runs on Windows, macOS, and Linux. Conda quickly installs, runs, and updates packages and their dependencies. Conda easily creates, saves, loads, and switches between environments on your local computer. It was created for Python programs, but it can package and distribute software for any language.

In addition, I recommend that you use [mamba](https://mamba.readthedocs.io/en/latest/) to wrap **Conda** to accelerate running speed.

- [tldr](https://tldr.sh/)

The TLDR pages are a community effort to simplify the beloved man pages with practical examples. You can get uasage clearly and quickly by using `tldr` compared to `man`. In mac, you can install that by `brew install tldr`.  

![tldr](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210610190712.png)

- [tree](https://www.geeksforgeeks.org/tree-command-unixlinux/)

**tree** is a recursive directory listing program that produces a depth-indented listing of files. With no arguments, tree lists the files in the current directory. When directory arguments are given, tree lists all the files or directories found in the given directories each in turn. Upon completion of listing all files and directories found, tree returns the total number of files. You can install that by `brew install tree`.

![tree](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210610190826.png)

## 3. Editor

I will list the editors I used in different situations. If you have any other recommendations, please reach to me!

- [Vscode](https://code.visualstudio.com/)  

*Vscode* is an open-source editor, and I mainly use *Vscode* to write *Markdown*, *Latex*, and *RST*. Some simple modifications of the project for *Python* and *C/C++* will happen in *Vscode*. There are lots of extensions to help you achieve your goals. I usually use it to write my blog.

- [pycharm](https://www.jetbrains.com/pycharm/)  

*Pycharm* is my main editor when I develop tools or applications in *Python*. I use *EDU* email to apply for the professional version. I think it is my favourite IDE when I develop project in local envirment. In one word, I love that very much! :smile:

- [CLion](https://www.jetbrains.com/clion/)  

*CLion* is my *C/C++* IDE, which includes many features like code generation, code quality assurance. I use *EDU* email to apply for the professional version.

------

## 4. Application

This part list variety of applications used for different goals. Every application has a one word description

- [Alfred][] A tool can give your different control and efficiency in mac
- [Sensei][] The Next Generation Mac performance tool
- [Default Folder x][]  A tool can empower default finder
- [Docker][] Docker is a tool to create a safe environment for development or production
- [Chrome][] There is no reason not to use it. :heart:
- [IINA][] Great tool that is used to play video
- [Imagine][] Compress images before you upload somewhere. light and powerful!
- [Magnet][] A tool is used to manage windows for different applications
- [Office][] :smile:
- [MonitorControl][] It manage brightness and sound for different monitors
- [Monodraw][] A tool is used to design fancy ASCII strings
- [PDF Expert][] Best pdf reader in Mac
- [PicGo][] A tool is used to upload images to *Web service* like *Github*. It is beneficial for writing blogs.
- [SnippetsLab][] My favouriate tool stored code snippets, and it can be integrated with Alfred
- [Xcode][] :smile:
- [zoom][] MEETING!
- [Xmind][]  XMind always makes your creative and keeps your minds clears
- [Transmit][] Upload, download and manage files on servers with beautiful and powerful UI
- [Time Sink][] Time Sink a good tool to record your using time to track your behaviour
- [SoundSource][] SoundSource can help you get truly powerful control over all the audio
- [Reeder 5][] A RSS reader and keep control of your reading
- [Path Finder][] Better file manager for Macos
- [Notion][] A excellent notion tool
- [One Switch][] One Switch can help you finish some progress like keep awake and hide icons on one button
- [iShot][] A great tool to  take screenshots
- [Google Drive][] Google Drive is a cloud storage service that allows you to store and share files with anyone
- [Ferdi][] Ferdi can integerate other tools like Gmail, Slack, or others to allow you manage information in one place
- [Dash][] Dash is a good friend for developers
- [CleanShot X][] I usually use it to creat gif althought it can take screenshots as well
- [Bartender][] Bartender is a great application to manage icons of all your working tools
- [AltTab][] AltTab is a good tool to manage windows for different applications
- [AlDente][] AlDente is able to keep your battery healthy by controling the power consumption
- [Zotero][] My favourite tools to manage research papers

<!-- link -->
[Alfred]: https://www.alfredapp.com/
[Sensei]: https://sensei.app/
[Default Folder x]: https://www.stclairsoft.com/DefaultFolderX/
[Docker]: https://www.docker.com/?utm_source=google&utm_medium=cpc&utm_campaign=dockerhomepage&utm_content=namer&utm_term=dockerhomepage&utm_budget=growth&gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI1yYmAI5cysoIDN2Vbhs5tplap41qP5MKKybSNbg9nTCA8oPe2yeXAaAofgEALw_wcB
[Chrome]: https://www.google.com/chrome/?brand=FKPE&geo=US&gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI0QHFokL1RZC_foWkHv92lRIhon6vMSWCm_2Zfe6g5vrkRO-JxOwJcaAsToEALw_wcB&gclsrc=aw.ds
[IINA]:  https://iina.io/
[Imagine]: https://www.electronjs.org/apps/imagine
[Magnet]: https://apps.apple.com/us/app/magnet/id441258766?mt=12
[Office]: https://www.microsoft.com/en-us/microsoft-365/buy/compare-all-microsoft-365-products-b?&ef_id=Cj0KCQiAy4eNBhCaARIsAFDVtI1A9wssm6IqR6G-9UkDRVIQ1NPnkqIJ6den59wcV_uYTkAhYtLZZ_waAjCiEALw_wcB:G:s&OCID=AID2200006_SEM_Cj0KCQiAy4eNBhCaARIsAFDVtI1A9wssm6IqR6G-9UkDRVIQ1NPnkqIJ6den59wcV_uYTkAhYtLZZ_waAjCiEALw_wcB:G:s&lnkd=Google_O365SMB_Brand&gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI1A9wssm6IqR6G-9UkDRVIQ1NPnkqIJ6den59wcV_uYTkAhYtLZZ_waAjCiEALw_wcB
[MonitorControl]: https://github.com/MonitorControl/MonitorControl
[Monodraw]: https://monodraw.helftone.com/
[PDF Expert]: https://pdfexpert.com/?utm_source=google&utm_medium=cpc&utm_campaign=brand-hp&utm_google-campaign=brand-hp&utm_content=264692671625&utm_term=pdf%20expert&gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI2Mb-84Xo5XJBQWkPHxGL-G11BnR8iF65B4kGDm2huhRRUa0wJy5VMaAjoREALw_wcB
[PicGo]: https://picgo.github.io/PicGo-Doc/en/guide/
[SnippetsLab]: https://www.renfei.org/snippets-lab/
[zoom]: https://zoom.us/download
[Xcode]: https://developer.apple.com/xcode/
[Xmind]: https://www.xmind.net/download/
[Transmit]: https://panic.com/transmit/
[Time Sink]: https://manytricks.com/timesink/
[SoundSource]: https://rogueamoeba.com/soundsource/
[Reeder 5]: https://reederapp.com/
[Path Finder]: https://cocoatech.com/?utm_medium=adwords&utm_campaign=&utm_source=&gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI393QWmb2txQXFvOVvRvNoD7sXYhkfmZ2x2d173JdcNsBvlLB1rr3saArwFEALw_wcB#/
[Notion]: https://www.notion.so/product?utm_source=google&utm_campaign=2075789710&utm_medium=85296176828&utm_content=495341253306&utm_term=notion%20mac%20app&targetid=aud-1053779029641:kwd-664489244375&gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI0me9d6EJGOKlH-sgSwEymK7hvXwpwMTH8k_y_0QGZDbzO_qokQi70aAuAOEALw_wcB
[One Switch]: https://fireball.studio/oneswitch
[iShot]: https://apps.apple.com/cn/app/ishot-%E4%BC%98%E7%A7%80%E7%9A%84%E6%88%AA%E5%9B%BE%E5%BD%95%E5%B1%8F%E5%B7%A5%E5%85%B7/id1485844094?mt=12
[Google Drive]: https://www.google.com/drive/
[Ferdi]: https://getferdi.com/
[Dash]: https://kapeli.com/dash
[CleanShot X]: https://cleanshot.com/
[Bartender]: https://www.macbartender.com/
[AltTab]: https://alt-tab-macos.netlify.app/
[AlDente]: https://github.com/davidwernhart/AlDente
[Zotero]: https://www.zotero.org/
