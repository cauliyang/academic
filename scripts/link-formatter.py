#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
@author: YangyangLi
"""

import re
import sys

RES = {}


def replace_link(match):
    """Replace a link in a line of text"""
    RES[match.group(1).lower()] = match.group(2)
    return f"[{match.group(1)}]"


def main(file):
    link_regex = re.compile(r"\[(.*?)\]\((.*?)\)")
    out = open("index2.md", "w")
    with open(file) as f:
        for line in f:
            out.write(link_regex.sub(replace_link, line))

    for k, v in RES.items():
        out.write(f"[{k}]: {v}\n")

    out.close()


if __name__ == "__main__":
    main(sys.argv[1])
