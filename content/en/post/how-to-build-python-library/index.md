---
title: "The Most  Steps You Cannot Miss When Building Python Library"
subtitle: "Build Python Library from Scratch"
summary: "Some golden tips to build Python library from scratch"
authors: ["admin"]
tags: ["Development"]
categories: ["Python"]
date: 2021-12-03T09:56:07-06:00
lastmod: 2021-12-03T09:56:07-06:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: "Pyboxes"
  focal_point: "Smart"
  preview_only: false

links:
 - name: Github
   url: https://github.com/cauliyang/pybox
   icon_pack: fab
   icon: github
# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
{{< toc >}}

## 1. Introduction

You may want to create something fantastic after you have known more about Python. But how to do it? Which part is the most important? Here I will show you the best way to build a Python library from scratch, as well as sharing valuable resources to help you improve the quality of your project. All these resources are mined when I learn how to write a better library by myself.  I share here and hope everyone can find that early. Keeping in mind that a good tool will make project more attractive, which enable you to save a lot of time as well. However, you can share your thoughts in comment if you have any other great recommendations.  I will be happy to receive your feedback.

## 2. Think over the goal of your project?

The first step is to think about why you want to build a Python library. What do you want to achieve?  This question will help you answer the main goal of your project. After getting a mature idea, you are ready to start now.  Now, following topics are you should consider:  

- How to build a library
- How to write a good codebase
- How to maintain a library
- How to test a library
- How to document a library
- How to deploy a library

The resources I will share are closely related to the above topics.

## 3. Git and GitHub

I guess you must hear [*GitHub*], which is the first tool you need to get started. *GitHub* is a great tool to share your project with the world and store your code. You can also use it to share your ideas with other people. Learning how to use *GitHub* is important as well. [Git] is a free and open source distributed version control system designed to handle everything from small to very large projects. In addition to learn how to use *Git* and *GitHub* to share your project. [git-flow] is another one you should not miss. It will show you ideas and techniques about how to manage your branches during development. You should adopt this strategy even if you develop project alone.  *git-flow* is not only an idea, but a [tool](https://github.com/nvie/gitflow). It also includes [commands completion](https://github.com/bobthecow/git-flow-completion).  What is more, writing a good commit message is also important. You can check the [blog](https://medium.com/@hritik.jaiswal/how-to-write-a-good-commit-message-9d2d533b9052) to learn more.

## 4.  Documentation

The default document system for Python is [**Sphinx**](https://www.sphinx-doc.org/en/master/) and [**reStructuredText (RST)**](https://docutils.sourceforge.io/rst.html).  *Sphinx* is a tool that makes it easy to create intelligent and beautiful documentation. *RST* is an easy-to-read, what-you-see-is-what-you-get plaintext markup syntax and parser system.  Here, I recommend a [great blog][https://realpython.com/documenting-python-code/] from [*Real Python*](https://realpython.com/), which is cool website that has a lot of great tutorials.

I will leave some other useful resources for you to explore:

- [Sphinx and RST syntax guide (0.9.3)](https://thomas-cokelaer.info/tutorials/sphinx/_modules/template.html#MainClass1.function1)
- [Sphinx and RST syntax guide (0.9.3)](https://thomas-cokelaer.info/tutorials/sphinx/docstring_python.html)
- [Sphinx and RST syntax guide (0.9.3)](https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html)
- [reStructuredText Markup Specification](https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html)
- [Sphinx and RST syntax guide (0.9.3)](https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html)
- [Sphinx Themes Gallery](https://sphinx-themes.org/#themes)

Feel free to explore and learn more about Sphinx and RST. Be patient, you cannot learn in one day. :smile:

In fact, we can also use `markdown` to write documentation.  However, docstrings still accept three kinds of style: *Google*, *Numpy*, *RST*.  Check [Myst](https://myst-parser.readthedocs.io/en/latest/) to learn more about this topic, if you are interested.

## 5. Type Annotator

Type hint is one of my favorite feature in Python even though someone may complain this feature is again flexity of Python.  It gives you a chance to write more readable and maintainable code.
[typing](https://docs.python.org/3/library/typing.html) is a library that provides this feature for you.  Sometimes, you are bored with writing type hint, or you take over other's codebase. [MonkeyType](https://github.com/instagram/MonkeyType) will enable you to have a rest :smile:. It can collect runtime types of function arguments and return values, and automatically generate stub files or even add draft type annotations directly to your Python code based on the types collected at runtime.  [Stub files](https://mypy.readthedocs.io/en/stable/stubs.html) is a file type that contains type hints for your code and split source code and type hint. Also, [pytype - 🦆✔](https://google.github.io/pytype/) can infer types for your Python code - without requiring type annotations.  If you would like to know more about these two tools, please check out related links. Although two tools are Type Annotator, keep in mind that it is not reason you do not write type hint. You always need to double-check the types tools annotate.

## 6. Type Checker

Type Checker is a kind of tool used to check correctness of type hint. It is one of safe nets to prevent errors from your code.  There are several type checkers:

- [Mypy](https://mypy.readthedocs.io/en/stable/)
- [Pyre](https://pyre-check.org/docs/getting-started/)
- [Pydantic](https://pydantic-docs.helpmanual.io/)

*Mypy* is a static type checker for Python. If you sprinkle your code with type annotations, it can type check your code and find common bugs. As it is a static analyzer, or a lint-like tool, the type annotations are just hints for *Mypy* and don’t interfere when running your program. You run your program with a standard Python interpreter, and the annotations are treated effectively as comments. *Pyre* is another type checker. I currently use *Mypy*, and you can choose one you like.  *Pydantic* is data validation and settings management using python type annotations. It is not a comprehensive type checker, it only focuses on validating data, and settings.

## 7.  Linter

A linter is basically a program that inspects your code and gives feedback. It can tell you the issues in your program and also, a way to resolve them. You can run it anytime to ensure that your code is matching standard quality.  There are several linters:

- [Pylint](https://www.pylint.org/)
- [Flake8](https://flake8.readthedocs.io/en/latest/)

I now use *Flake8* to lint my code. Interestingly, there is [rank about linter](https://www.slant.co/topics/2692/~best-python-code-linters). But I do not know if it is convinced or not.
If you choose *Flake8*, you can use extensions to empower your linter. [This repo](https://github.com/DmytroLitvinov/awesome-flake8-extensions) contains a list of awesome extensions for *Flake8*.

Here is a list of extensions I use:

- [flake8-bandit]
- [flake8-bugbear]
- [flake8-docstrings]
- [flake8-rst-docstrings]
- [flake8-broken-line]
- [flake8-comprehensions]
- [flake8-eradicate]
- [darglint]
- [safety]

<!-- Link -->
 [flake8-bandit]: https://pypi.org/project/flake8-bandit/
 [flake8-bugbear]: https://pypi.org/project/flake8-bugbear/
 [flake8-docstrings]: https://pypi.org/project/flake8-docstrings/
 [flake8-rst-docstrings]: https://pypi.org/project/flake8-rst-docstrings/
 [flake8-broken-line]: https://pypi.org/project/flake8-broken-line/
 [flake8-comprehensions]: https://pypi.org/project/flake8-comprehensions/
 [flake8-eradicate]: https://pypi.org/project/flake8-eradicate/
 [darglint]: https://pypi.org/project/darglint/
 [safety]: https://pypi.org/project/safety/

## 8. Package

*Python* provides [a tutorial](https://packaging.python.org/en/latest/tutorials/packaging-projects/#creating-the-package-files) about how to build and public package. However, I like to use [poetry](https://python-poetry.org/) as a tool to build and public package. Also, *poetry* is good tool to manage your dependencies, and *poetry* is a project manage tool.  It helps me save lots of time and effort.  

## 9. Miscellaneous

This section contains some other useful information about how to build a professional Python package.

### 9.1 How to write a good README

- [Shields.io](https://shields.io/category/downloads) can create quality metadata badges for open source projects.
- [PyPI Stats](https://pypistats.org/search/%20pyboxes) can show statistics about your package.
- [For the Badge](https://forthebadge.com/) is another style of badge. You may find it useful.
- [Beautiful insights for your GitHub repositories](https://repobeats.axiom.co/) can show you some insights about your GitHub repositories in README. It is pretty cool.
- [amazing-github-template]
- [awesome-pinned-gists]
- [awesome-open-source]
- [cookiecutter]
- [readme-so]
- [how-to-write-readme]

### 9.2 Other useful tools

[https://github.com/replicatedhq/dockerfilelint](https://github.com/replicatedhq/dockerfilelint)
[https://github.com/rubik/radon](https://github.com/rubik/radon)
[https://github.com/dry-python/returns](https://github.com/dry-python/returns)


<!-- link -->
[Pepy]: https://pepy.tech/project/pyboxes
[Pypistats]: https://pypistats.org/search/%20pyboxes
[Shield]: https://shields.io/category/downloads
[Badge]: https://forthebadge.com/
[sphnix theme]: https://sphinx-themes.org/#themes
[waka-readme-stats]: https://github.com/anmol098/waka-readme-stats
[waka-readme]: https://github.com/athul/waka-readme
[amazing-github-template]: https://github.com/dec0dOS/amazing-github-template#readme
[awesome-pinned-gists]: https://github.com/matchai/awesome-pinned-gists
[awesome-open-source]: https://awesomeopensource.com/project/anmol098/waka-readme-stats
[cookiecutter]: https://cookiecutter.readthedocs.io/en/1.7.2/usage.html
[readme-so]: https://readme.so/editor
[how-to-write-readme]: https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project
[*github*]: https://github.com 
[git-flow]: https://jeffkreeftmeijer.com/git-flow/
[git]: https://git-scm.com/