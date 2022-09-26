---
title: "The Important  Steps You Cannot Miss When Building Python Library Part 1"
subtitle: "Build Python Library from Scratch"
summary: "Some golden tips to build Python library"
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
  caption: "Tools to build Python library"
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
toc: true
---

## 1. Introduction

After you've learned more about Python, you might want to make something spectacular. But how do you go about doing it? Which part is the most crucial? Here, I'll show you how to build a Python library from the ground up, as well as share useful resources to help you improve the quality of your project. All of these resources will be mined as I learn how to write a better library on my own. I'm sharing it here in the hopes that everyone will find it soon. Keeping in mind that a good tool will make your project more appealing, allowing you to save a lot of time. If you have any other great recommendations, please share them in the comments. I look forward to hearing from you.

## 2. Think over the goal of your project?

The first step is to consider why you want to create a Python library. What do you hope to accomplish? This question will assist you in answering the primary goal of your project. You are now ready to begin once you have developed a mature idea. Now, you should think about the following topics:

- How to build a library
- How to write a good codebase
- How to maintain a library
- How to test a library
- How to document a library
- How to deploy a library

The resources I will share are closely related to the above topics.

## 3. Git and GitHub

I'm sure you've heard of [*GitHub*], which is the first tool you'll need to get started. _GitHub_ is a fantastic tool for sharing your project with the rest of the world and storing your code. You can also use it to share your thoughts with others. It's also a good idea to learn how to use _GitHub_. [Git] is a free and open source distributed version control system that can handle projects ranging from small to very large. In addition, learn how to share your project using _Git_ and _GitHub_. Another one to check out is [git-flow]. It will demonstrate ideas and techniques for managing your branches during development. Even if you are developing a project on your own, you should follow this strategy. _git-flow_ is more than just an idea; it's also a [tool](https://github.com/nvie/gitflow). It also comes with [commands completion](https://github.com/bobthecow/git-flow-completion). Furthermore, writing a good commit message is essential. To learn more, visit the [blog](https://medium.com/@hritik.jaiswal/how-to-write-a-good-commit-message-9d2d533b9052).

## 4. Documentation

The default document system for Python is [**Sphinx**](https://www.sphinx-doc.org/en/master/) and [**reStructuredText (RST)**](https://docutils.sourceforge.io/rst.html). _Sphinx_ is a tool that makes it simple to create intelligent and visually appealing documentation. _RST_ is an easy-to-read plaintext markup syntax and parser system that is what you see is what you get. I recommend a [great blog][https://realpython.com/documenting-python-code/] from [_Real Python_](https://realpython.com/), a cool website with a lot of great tutorials.

I will leave some other useful resources for you to explore:

- [Sphinx and RST syntax guide (0.9.3)](https://thomas-cokelaer.info/tutorials/sphinx/_modules/template.html#MainClass1.function1)
- [Sphinx and RST syntax guide (0.9.3)](https://thomas-cokelaer.info/tutorials/sphinx/docstring_python.html)
- [Sphinx and RST syntax guide (0.9.3)](https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html)
- [reStructuredText Markup Specification](https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html)
- [Sphinx and RST syntax guide (0.9.3)](https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html)
- [Sphinx Themes Gallery](https://sphinx-themes.org/#themes)

Feel free to explore and learn more about Sphinx and RST. Be patient, you cannot learn in one day. :smile:

In fact, we can also use `markdown` to write documentation. However, docstrings still accept three kinds of style: _Google_, _Numpy_, _RST_. Check [Myst](https://myst-parser.readthedocs.io/en/latest/) to learn more about this topic, if you are interested.

## 5. Type Annotator

Although some may argue that type hint is incompatible with Python's flexibility, it is one of my favorite features. It allows you to write more readable and maintainable code.
This feature is provided by the [typing](https://docs.python.org/3/library/typing.html) library. Sometimes you get tired of writing type hint, or you take over someone else's codebase. You can take a break with [MonkeyType](https://github.com/instagram/MonkeyType) :smile:. It can collect runtime types of function arguments and return values and generate stub files or even add draft type annotations directly to your Python code based on the types it collects. [Stub files](https://mypy.readthedocs.io/en/stable/stubs.html) are a type of file that contains type hints for your code as well as split source code and type hint. Additionally, [pytype- 🦆✔](https://google.github.io/pytype/) can infer types for your Python code - without the need for type annotations. If you want to learn more about these two tools, please visit the related links. Despite the fact that both tools are Type Annotator, keep in mind that this is not the reason you do not write type hint. You should always double-check the types that the tools annotate.

## 6. Type Checker

A type checker is a tool that checks the correctness of a type hint. It is one of the safety nets for preventing errors in your code. There are several types of type checkers:

- [Mypy](https://mypy.readthedocs.io/en/stable/)
- [Pyre](https://pyre-check.org/docs/getting-started/)
- [Pydantic](https://pydantic-docs.helpmanual.io/)

_Mypy_ is a static type checker for Python. If you sprinkle your code with type annotations, it can type check your code and find common bugs. As it is a static analyzer, or a lint-like tool, the type annotations are just hints for _Mypy_ and don’t interfere when running your program. You run your program with a standard Python interpreter, and the annotations are treated effectively as comments. _Pyre_ is another type checker. I currently use _Mypy_, and you can choose one you like. _Pydantic_ is data validation and settings management using python type annotations. It is not a comprehensive type checker, it only focuses on validating data, and settings.

## 7. Linter

A linter is essentially a program that inspects and provides feedback on your code. It can tell you about the problems in your program and how to fix them. You can run it at any time to ensure that your code meets industry standards. There are several types of linters:

- [Pylint](https://www.pylint.org/)
- [Flake8](https://flake8.readthedocs.io/en/latest/)

I now use _Flake8_ to lint my code. Interestingly, there is [rank about linter](https://www.slant.co/topics/2692/~best-python-code-linters). But I do not know if it is convinced or not.
If you choose _Flake8_, you can use extensions to empower your linter. [This repo](https://github.com/DmytroLitvinov/awesome-flake8-extensions) contains a list of awesome extensions for _Flake8_.

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

_Python_ provides [a tutorial](https://packaging.python.org/en/latest/tutorials/packaging-projects/#creating-the-package-files) about how to build and public package. However, I like to use [poetry](https://python-poetry.org/) as a tool to build and public package. Also, _poetry_ is good tool to manage your dependencies, and _poetry_ is a project manage tool. It helps me save lots of time and effort.

Other interesting tools and resources are included Part 2 is coming soon.

<!--

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
[https://github.com/dry-python/returns](https://github.com/dry-python/returns) -->

<!-- link -->

[*github*]: https://github.com
[git-flow]: https://jeffkreeftmeijer.com/git-flow/
[git]: https://git-scm.com
