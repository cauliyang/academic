---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Guide for building Cpp Development with Conda In Linux"
subtitle: "Cmake as build system and use htslib as dependency"
summary: "Config cpp development environment in macos or linux and fix dependencies for htslib"
authors: ["admin"]
tags: ["develop"]
categories: ["c++"]
date: 2022-06-15T23:17:30-05:00
lastmod: 2022-06-15T23:17:30-05:00
featured: true
draft: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
toc : true
---

## 1. Config Compile Environment with Conda



Recently, I am preparing to develop. a tool using _C++_ in Linux and Macos environment. Usually, we do have root right to download dependencies of C++ using  `apt-get install -y denpendencies` directly in _Ubuntu_. We only resort to compile dependencies by ourselves. However, we usually will feel frustrated when dependencies chain is complicated. That means we need to compile every library we use. This may cost you one night or even one week. __[Conda]__ is package manager mainly used in _Data Science_ domain. So far, __Conda__ provide some other language dependencies for instance _C++_ or _Rust_ as well. For concrete package support, you can go through the [Conda cloud]. Name of package may change at some times in [Conda cloud]. You may need to search "real name" in Conda cloud before installation. Hence, __Conda__ can regard as a tool used to install dependencies for _C++_, especially in __Bionformatics domain__. However, I must say that nowdays there are severl solutions for managing _C++_ dependencies like [Vcpkg], [Conan], [CPM] etc. I use [CPM] as alternative choice. 



## 1.1 Install GCC or Clang



When it metioned to compile environment, it is import to install compiler, and [GCC] or [Clang] may be your choices. Usually, linux system will ship with gcc but the version may be low (~4.5). That will not allow you to use newest propoties of _C++_. In the meanwhile, you do not have root right yet. But you can use Conda install any version of GCC or Clang by `conda install -c conda-forge gcc` or `conda install -c conda-forge  clang`. Keep in mind that you should search gcc or clang in [conda cloud] firstly before installation in order to insall proper version. 



After installtion, Conda may set three significant variables for you `CFLAGS`, `CXXFLAGS` and `LDFLAGS`. You can check that by `echo $CFLAGS`. You need to set that in your `~/.bashrc` or `~/.zshrc` if you do not find that. I will you examples:



```bash
export CXXFLAGS="-fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /your_conda_absolute_path/miniconda3/include"

export CFLAGS="-march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /your_conda_absolute_path/include"

export LDFLAGS="-Wl,-O2 -Wl,--sort-common -Wl,--as-needed -Wl,-z,relro -Wl,-z,now -Wl,--disable-new-dtags -Wl,--gc-sections -Wl,--allow-shlib-undefined -Wl,-rpath,/your_conda_absolute_path/miniconda3/lib -Wl,-rpath-link,/your_conda_absolute_path/miniconda3/lib -L/your_conda_absolute_path/miniconda3/lib" 

```

__You must change your_conda_absolute_path to your path of conda__. I install conda in base environment, and I also recommend you install gcc or clang in base environment. 



## 2. What is htslib



__[Htslib]__ is classic and famous libarary used to manuplate bioinformatics format files including _bam_, _sam_, _vcf_, and _bcf_ etc. 

__Htslib__ is implemented by _C_ so that it is able to meet high performance requirement. So far, many populate tools for example _[samtools]_ and _[bcftools]_  are all based on htslib. There are wrapper of other language like _[pysam]_ based on _Python_, _[rhtslib]_ based on _R_, _[rust_htslib]_ based on _Rust_. That will enable people using different language to apply htslib in their application. 



_[Zlib]_ is only one library htslib must depend on. At the mean time, htslib have other dependencies, which enable htslib to have more rich features. Here, I will not explain what feature dependencies will provide respectly. __However, _Conda_ can install htslib easily by `conda install htslib`__. Keep in mind that you also can define library version `conda install htslib=1.15.1` 







## 2. The Error you may encounter



### 2.1 Error 1



**How to fix that**



### 2.2 Error 2 



**How to fix that**





## 3. Summary 







<!---link---> 

[conda]: https://docs.conda.io/en/latest/
[vcpkg]: https://vcpkg.io/en/index.html
[conan]: https://conan.io/
[cpm]: https://github.com/cpm-cmake/CPM.cmake
[htslib]: https://github.com/samtools/htslib
[rsut_htslib]:https://docs.rs/rust-htslib/latest/rust_htslib/
[samtools]: http://www.htslib.org/
[bcftools]:http://samtools.github.io/bcftools/bcftools.html
[pysam]: https://github.com/pysam-developers/pysam
[rhtslib]: https://bioconductor.org/packages/release/bioc/html/Rhtslib.html
[zlib]: https://zlib.net/
[conda cloud]: https://anaconda.org/
[gcc]: https://gcc.gnu.org/
[clang]: https://clang.llvm.org/







