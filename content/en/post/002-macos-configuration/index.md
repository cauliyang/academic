---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Configuration of macOS for development and research
subtitle: The Best Mac Apps Makes Life Easier
summary: Concrete description about how to config my mac
authors: [admin]
tags: [tool]
categories: [macos]
date: 2022-11-26T23:10:02-06:00
lastmod: 2022-11-26T23:10:02-06:00
featured: true
draft: false

image:
  placement: 0
  caption: 'Image credit: [**Pixilart**](https://www.pixilart.com/)'
  focal_point: Center
  preview_only: true
      
# header:
#   image: "featured.jpeg"
#   caption: "test"
#   Uncomment and edit lines below to show custom links.
links:
  - name: dot-files
    url: https://github.com/cauliyang/dot-files
    icon_pack: fab
    icon: github
projects: []
toc: true
---


## 1. Introduction

Configuration migration is time-consuming task so that I decide to write a blog to record the process.
I will divide the configuration into two parts.
In the first part, I will introduce the software I heavily use, and then share the configuration files in the second part.
My newest device is MacBook Pro of M1 model, Here is a list of tools I use:

{{< figure src="https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/iShot2021-11-27%2022.26.58.png" caption="Page 1" numbered="true" width="333">}}

{{< figure src= "https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main/img/iShot2021-11-27%2022.27.07.png" caption="Page 2" numbered="true" width="330" >}}

{{< figure src= "https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/iShot2021-11-27%2022.27.14.png" caption="Page 3" numbered="true" width="333" >}}

## 2. System Environment Tools

The first part will show the applications and tools I used for production, and every app or tool has a simple description. If you have an interest in a certain app, you can click the link I leave to get more information.

- [Homebrew]

Homebrew is an important tool for package manager in mac, which help you download and uninstall applications or tools efficiently.
For detailed information, please click the link above to check that.
Now I replace some tool with more interesting ones:

- [iterm2] → [alacritty]
- [zsh] → [fish]
- [tmux] → [zellij]

However, I still leave information about previous tools.

- [Alacritty]

**Alacritty** is light-weight terminal emulator compared to [iterm2].
It is flexible, and it is configured by yaml file directly.
I think I will keep using it so far.
Meanwhile, I use it with [zellij] to manage the terminal windows.
Compared to [tmux], [zellij] provide more friendly interface.
Like [tmux], you can use configuration file to change [zellij].
Both are blazing fast, and they are implemented by [rust].

- [fish]

**Fish** is a smart and user-friendly command line shell for Linux, macOS, and the rest of the family.
It includes some valuable features by default in comparison with [zsh].
For example, autosuggestion.
Hence, you can use it out of box without any efforts for configuration.
However, Fish has plugins system as well, and I use [fisher] to manage plugins.
Importantly, the customization and configuration of Fish is easy and friendly.

- ~~[iterm2]~~

**iterm2** is a replacement for Terminal and the successor to iterm.
It works on Macs with macOS 10.14 or newer.
iterm2 brings the terminal into the modern age with features you never knew you always wanted.
Also, iterm2 has integrated [tmux], you can try to use **tmux**, which is a terminal multiplexer.
It lets you switch easily between several programs in one terminal, detach them (they keep running in the background), and reattach them to a different terminal.

If you usually work on a remote server, it is a good idea to use **tmux** in the remote server.
That will help you keep the connection in case you lose control of the current shell in which you are working.
There is a tip, you can add `ssh -t user@hostname "tmux attach -t coding01 || tmux new -s coding01"`.
Then, you will connect the shell you have worked on last time when you log in to the remote server.
If you never heard **tmux**, you can click the link above to learn how to use it.
In addition, [Tmuxinator] is great choice to empower **tmux**

- ~~[zsh]~~

**Zsh** is an alternative to Bash, and it has more advanced features.
Oh My Zsh is a delightful, open-source, community-driven framework for managing your Zsh configuration.
It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout.
The screenshot of my terminal is shown in the figure below.

{{< figure src= "https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210610155159.png" caption="zsh" numbered="true" width="600" >}}

You can customize your own terminal, which will improve working efficiency.
Also, there are many plugins you can use to improve your working efficiency.

- [vim]

**Vim** is an editor used in the terminal, and I use it every day.
Vim is shipped with macOS, and you also install other vim-extended editors such as [neovim] and [spacevim].
Currently, I use [LunarVim], an opinionated, extensible, and fast IDE layer for NeoVim.
I think it is so cool and powerful.

- [git]

**Git** is a free and open-source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
Also, Git a t tool used in the terminal to download and upload data or code to the _GitHub_.
Similarly, Git is shipped with macOS, so you may need to update that by `brew upgrade git`.
What is more, **Oh my zsh** provides some alias and plugins, which help us to use git easily.

- [conda]

**Conda** is a package, dependency, and environment management for any language such as _Python_, _R_, _Ruby_, _C/C++_, and more.
Conda is an open-source package management system and environment management system that runs on Windows, macOS, and Linux.
Conda quickly installs, runs, and updates packages and their dependencies.
Conda easily creates, saves, loads, and switches between environments on your local computer.
It was created for Python programs, but it can package and distribute software for any language.

In addition, I recommend that you use [mamba] to wrap **Conda** to accelerate running speed.

However, you should install [miniforge] that is a minimal installer for [conda] with some pre-configured features if you
use M1 model.
[miniforge] emphasis on supporting various CPU architectures including Apple M1.
You can also use [mamba] or [micromamba] to install packages in [conda] environment.

- ~~[tldr]~~

The TLDR pages are a community effort to simplify the beloved man pages with practical examples.
You can get usage clearly and quickly by using `tldr` compared to `man`.
In mac, you can install that by `brew install tldr`.

{{< figure src= "https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210610190712.png" caption="tldr" numbered="true" width="500" >}}

- [tree]

**tree** is a recursive directory listing program that produces a depth-indented listing of files.
With no arguments, tree lists the files in the current directory.
When directory arguments are given, tree lists all the files or directories
found in the given directories each in turn.  Upon completion of listing all
files and directories found, tree returns the total number of files.
You can install that by `brew install tree`.

{{< figure src= "https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210610190826.png" caption="tree" numbered="true" width="500" >}}

- [cheat.sh]

**cheat.sh** is the unified access to the best community driven cheat sheets repositories of the world. I like it very much :heart:

{{< figure src= "https://camo.githubusercontent.com/6072fd18893f3b0cc2efdc1f28630af858744c15ad953628799910502113456e/68747470733a2f2f63686561742e73682f66696c65732f64656d6f2d6375726c2e676966" caption="cheat.sh" numbered="true" width="500" >}}

- [dust]

dust = du + rust. It like du but more intuitive.

{{< figure src= "https://raw.githubusercontent.com/bootandy/dust/master/media/snap.png" caption="dust" numbered="true" width="500" >}}

- [hyperfine]

**hyperfine** is a command-line benchmarking tool.

{{< figure src= "https://camo.githubusercontent.com/88a0cb35f42e02e28b0433d4b5e0029e52e723d8feb8df753e1ed06a5161db56/68747470733a2f2f692e696d6775722e636f6d2f7a31394f5978452e676966" caption="hyperfine" numbered="true" width="500" >}}

## 3. Editor

I will list the editors I used in different situations.
If you have any other recommendations, please reach out to me!

- [VS Code]

_VS Code_ is an open-source editor, and I mainly use _VS Code_ to write _Markdown_, _Latex_, and _RST_.
Some simple modifications of the project for _Python_, _C/C++_, _Rust_, will be written in _VS Code_.
There are lots of extensions to help you achieve your goals. I usually use it to write my blog.

- [Pycharm]

_Pycharm_ is my main editor when I develop tools or applications in _Python_.
I use _EDU_ emails to apply for the professional version.
I think it is my favorite IDE when I develop _Python_ project in local environment. In one word, I love that very much! :smile:

- [CLion]

_CLion_ is my _C/C++_ and _Rust_ IDE, which includes many features like code generation, code quality assurance and code refactor.
I use _EDU_ emails to apply for the professional version as well.

- [Lunarvim]

_Lunarvim_ is a comprehensive configuration of Neovim, and It gives you full-profile IDE developed experience!
I cannot live without it! :rocket:

**Closing thoughts:**
I really like [neovim] when I develop some project about rust.

## 4. Application

This part list variety of applications used for different goals. Every application has a one-word description

- [Alfred] A tool can give your different control and efficiency in mac
- ~~[Sensei] The Next Generation Mac performance tool~~
- [Default Folder x] A tool can empower default finder
- [Docker] is a tool to create a safe environment for development or production
- [Chrome] There is no reason not to use it. :heart:
- [IINA] Great tool that is used to play video
- [Imagine] Compress images before you upload somewhere. light and powerful!
- ~~[Magnet]~~ A tool is used to manage windows for different applications
- [Rectangle] A tool to move and resize windows in macOS
- [Office] :smile:
- [MonitorControl] It manages brightness and sound for different monitors
- [Monodraw] A tool is used to design fancy ASCII strings
- [PDF Expert] Best PDF reader in Mac
- [PicGo] A tool is used to upload images to _Web service_ like _GitHub_. It is beneficial for writing blogs.
- [SnippetsLab] My favorite tool stored code snippets, and it can be integrated with Alfred
- [Xcode] :smile:
- [Zoom] MEETING!
- [Xmind] always makes your creative and keeps your minds clears
- [Transmit] Upload, download and manage files on servers with beautiful and powerful UI
- [Time Sink] is a good tool to record your using time to track your behavior
- [SoundSource] can help you get truly powerful control over all the audio
- [Reeder 5] A RSS reader and keep control of your reading
- [Path Finder] Better file manager for macOS
- [Notion] A excellent notion tool
- [One Switch] can help you finish some progress like keep awake and hide icons on one button
- [iShot] A great tool to take screenshots
- [Google Drive] is a cloud storage service that allows you to store and share files with anyone
- [Ferdi] can integrate other tools like Gmail, Slack, or others to allow you manage information in one place
- ~~[Dash]~~ is a good friend for developers
- [CleanShot X] I usually use it to create GIF, although it can take screenshots as well
- [Bartender] is a great application to manage icons of all your working tools
- [AltTab] is a good tool to manage windows for different applications
- [AlDente] is able to keep your battery healthy by controlling the power consumption
- [Zotero] is my favorite tools to manage research papers

<!-- link -->

[alacritty]: https://github.com/alacritty/alacritty
[aldente]: https://github.com/davidwernhart/AlDente
[alfred]: https://www.alfredapp.com/
[alttab]: https://alt-tab-macos.netlify.app/
[bartender]: https://www.macbartender.com/
[cheat.sh]: https://github.com/chubin/cheat.sh
[chrome]: https://www.google.com/chrome/?brand=FKPE&geo=US&gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI0QHFokL1RZC_foWkHv92lRIhon6vMSWCm_2Zfe6g5vrkRO-JxOwJcaAsToEALw_wcB&gclsrc=aw.ds
[cleanshot x]: https://cleanshot.com/
[clion]: https://www.jetbrains.com/clion/
[conda]: https://docs.conda.io/en/latest/
[dash]: https://kapeli.com/dash
[default folder x]: https://www.stclairsoft.com/DefaultFolderX/
[docker]: https://www.docker.com/?utm_source=google&utm_medium=cpc&utm_campaign=dockerhomepage&utm_content=namer&utm_term=dockerhomepage&utm_budget=growth&gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI1yYmAI5cysoIDN2Vbhs5tplap41qP5MKKybSNbg9nTCA8oPe2yeXAaAofgEALw_wcB
[dust]: https://github.com/bootandy/dust
[ferdi]: https://getferdi.com/
[fish]: https://fishshell.com/
[git]: https://git-scm.com/
[google drive]: https://www.google.com/drive/
[homebrew]: https://brew.sh/
[hyperfine]: https://github.com/sharkdp/hyperfine/
[iina]: https://iina.io/
[imagine]: https://www.electronjs.org/apps/imagine
[ishot]: https://apps.apple.com/cn/app/ishot-%E4%BC%98%E7%A7%80%E7%9A%84%E6%88%AA%E5%9B%BE%E5%BD%95%E5%B1%8F%E5%B7%A5%E5%85%B7/id1485844094?mt=12
[iterm2]: https://iterm2.com
[lunarvim]: https://github.com/LunarVim/LunarVim
[magnet]: https://apps.apple.com/us/app/magnet/id441258766?mt=12
[mamba]: https://mamba.readthedocs.io/en/latest/
[micromamba]: https://mamba.readthedocs.io/en/latest/user_guide/micromamba.html
[miniforge]: https://github.com/conda-forge/miniforge/
[monitorcontrol]: https://github.com/MonitorControl/MonitorControl
[monodraw]: https://monodraw.helftone.com/
[neovim]: https://neovim.io/
[notion]: https://www.notion.so/product
[office]: https://www.office.com/
[one switch]: https://fireball.studio/oneswitch
[pdf expert]: https://pdfexpert.com/?utm_source=google&utm_medium=cpc&utm_campaign=brand-hp&utm_google-campaign=brand-hp&utm_content=264692671625&utm_term=pdf%20expert&gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI2Mb-84Xo5XJBQWkPHxGL-G11BnR8iF65B4kGDm2huhRRUa0wJy5VMaAjoREALw_wcB
[picgo]: https://picgo.github.io/PicGo-Doc/en/guide/
[pycharm]: https://www.jetbrains.com/pycharm/
[rectangle]: https://rectangleapp.com/
[reeder 5]: https://reederapp.com/
[rust]: https://www.rust-lang.org/
[sensei]: https://sensei.app/
[snippetslab]: https://www.renfei.org/snippets-lab/
[soundsource]: https://rogueamoeba.com/soundsource/
[spacevim]: https://www.google.com/search?q=spacevim
[time sink]: https://manytricks.com/timesink/
[tldr]: https://tldr.sh/
[tmux]: https://github.com/tmux/tmux/wiki
[tmuxinator]: https://github.com/tmuxinator/tmuxinator
[transmit]: https://panic.com/transmit/
[tree]: https://www.geeksforgeeks.org/tree-command-unixlinux/
[vim]: https://vimawesome.com/
[vs code]: https://code.visualstudio.com/
[xcode]: https://developer.apple.com/xcode/
[xmind]: https://www.xmind.net/download/
[zellij]: https://zellij.dev/documentation/introduction.html
[zoom]: https://zoom.us/download
[zotero]: https://www.zotero.org/
[zsh]: https://ohmyz.sh/
