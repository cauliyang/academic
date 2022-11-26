---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Bioinformatics Toolbox Aka Boss
subtitle: A toolbox for bioinformatics analysis in C++
summary: Efficient tools for bioinformatics analysis
authors: [admin]
tags: [Bioinformatics, Development, C++]
categories: [Computational Biology]
date: 2022-09-25T23:22:31-05:00
lastmod: 2022-09-25T23:22:31-05:00
featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: 'Image credit: [**pixilart**](https://www.pixilart.com/art/dragon-hill-8ef3a436b8ad7b1?ft=staff-picks&ft_id=)'
  focal_point: Smart
  preview_only: false

links:
  - name: Github
    url: https://github.com/cauliyang/boss
    icon_pack: fab
    icon: github

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: [Bioinformatics Toolbox aka BOSS]
toc: true
---

BOSS is a bioinformatics toolbox, which will contain efficient tools. It is written in modern C++ and is tested exhaustively. It is designed to be easy to use and time-efficient. BOSS is a free software and is distributed under the terms of the GNU General Public License V3.

Currently, BOSS contains the following tools:

- [boss-fqsp](https://github.com/cauliyang/boss/blob/master/document/boss-fqsp.md) : A fast tool for splitting fastq files into paired files.
- [boss-squeue](https://github.com/cauliyang/boss/blob/master/document/boss-squeue.md): Summary Status of Jobs in HPC Queues

{{% callout warning %}}
It is now evolving and will be updated frequently. Please check the GitHub repository for the latest version.
{{% /callout %}}
