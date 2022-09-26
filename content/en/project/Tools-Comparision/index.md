---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Tools Comparision"
summary: "The project aim to compare the performance for several kinds of tools used to dectect alternative splicing."
authors: ["admin"]
tags: ["Development"]
categories: ["Computational Biology"]
date: 2021-04-17T05:37:29+08:00
featured: false
# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: "Image credit: [**Unsplash**](https://unsplash.com)"
  focal_point: "Center"
  preview_only: false
  placement: 0

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_code: "https://github.com/cauliyang/tools-compare"
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

{{< toc  >}}

# 1. Project Description

![](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/20210417053027.png)

The project aim to compare the performance for several kinds of tools used to dectect alternative splicing. The tools are shown below:

# 2. Program Plan

## 2.1 Installation of Software

- [x] [rMATs](http://rnaseq-mats.sourceforge.net/index.html) | [Documentation](https://github.com/Xinglab/rmats-turbo/blob/v4.1.1/README.md)
- [x] [MAJIQ](https://majiq.biociphers.org/) | [Documentation](https://biociphers.bitbucket.io/majiq/MAJIQ.html#builder)
- [x] [SplAdder](https://github.com/ratschlab/spladder) | [Documentation](https://spladder.readthedocs.io/en/latest/general.html)
- [x] [Jum](https://github.com/qqwang-berkeley/JUM) | [Documentation](<https://github.com/qqwang-berkeley/JUM/wiki/A-Hitchhiker's-guide-to-JUM-(version-2.0.2-)>)
- [x] [Whippet](https://github.com/timbitz/Whippet.jl) | [Documentation](https://github.com/timbitz/Whippet.jl)

## 2.2 Create Test Data

[ASimulatoR](https://github.com/biomedbigdata/ASimulatoR) is used to create benchmark data to evaluate the performance of the tools mentioned above.

## 2.3 Test Tools for simple data

- [x] [MISO](http://hollywood.mit.edu/burgelab/miso/)
- [x] [rMATs](http://rnaseq-mats.sourceforge.net/index.html)
- [x] [MAJIQ](https://majiq.biociphers.org/)
- [x] [LeafCutter](https://davidaknowles.github.io/leafcutter/)
- [x] [SplAdder](https://github.com/ratschlab/spladder)
- [x] [Jum](https://github.com/qqwang-berkeley/JUM)
- [x] [Whippet](https://github.com/timbitz/Whippet.jl)

## 2.4 Construct Snakemake Workflow

[![Snakemake](https://img.shields.io/badge/snakemake-≥5.7.0-brightgreen.svg?style=flat-square)](https://github.com/snakemake/snakemake-wrappers/blob/38ad23b0e4f58ce7dbd8d32612157f449ca02c62/docs/index.rst) is used to construct workflow.

- [x] Creat simulated data
- [x] Create Rna-align rule
- [x] Create Run-tools rules
  - [x] [MISO](http://hollywood.mit.edu/burgelab/miso/)
  - [x] [rMATs](http://rnaseq-mats.sourceforge.net/index.html)
  - [x] [MAJIQ](https://majiq.biociphers.org/)
  - [x] [LeafCutter](https://davidaknowles.github.io/leafcutter/)
  - [x] [SplAdder](https://github.com/ratschlab/spladder)
  - [x] [Jum](https://github.com/qqwang-berkeley/JUM)
  - [x] [Whippet](https://github.com/timbitz/Whippet.jl)
- [x] Create evaluation rules
- [x] Create report rules
