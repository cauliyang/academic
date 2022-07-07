---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Guide for building Cpp Development in Bioinformatics"
subtitle: "Cmake as build system and use htslib as dependency"
summary: "Config cpp development environment in macos or linux and fix dependencies for htslib"
authors: ["admin"]
tags: ["develop"]
categories: ["c++"]
date: 2022-06-15T23:17:30-05:00
lastmod: 2022-06-15T23:17:30-05:00
featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/)'
  focal_point: Smart
  preview_only: True

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
toc : true
---

## 1. Config Compile Environment

I am preparing to develop a tool using *C++* in the Linux and Macos environments. Usually, I do not have root rights to download dependencies for C++ using `apt-get install -y denpendencies` directly in *Ubuntu*. However, I usually feel frustrated when the dependency chain is complicated. That means I need to download and compile every library I use. This may cost you one night or even one week. **[Conda]** is a package manager mainly used in *the data science* domain. So far, **Conda** provides some other language dependencies, for instance *C++*, *Rust* and *R* as well. For concrete package support, you can go through the [Conda cloud]. The package name in [Conda cloud] may change at any time. You may need to search for "real name" in Conda Cloud before installation. Hence, **Conda** can be regarded as a tool used to install dependencies for *C++*, especially in **the bioinformatics domain**. However, I must say that nowadays, there are several solutions for managing *C++* dependencies like [Vcpkg], [Conan], [CPM], etc. I use [CPM] as an alternative choice. 



### 1.1 Install GCC or Clang



When it comes to the compilation environment, it is important to install a compiler, and [GCC] or [Clang] may be your choices. In general, Linux systems will ship with GCC, but the version may be low (4.9). That will not allow you to use the latest features of *C++*. In the meantime, you do not have root access yet. But you can use [Conda] to install any version of GCC or Clang by running `conda install -c conda-forge gcc` or `conda install -c conda-forge  clang`. Keep in mind that you should search for gcc or clang in [conda cloud] first before installation in order to install the proper version.

 

After installation, Conda may set three significant variables for you: `CFLAGS`, `CXXFLAGS,` and `LDFLAGS`. You can check that by using `echo $CFLAGS`. You need to set that in your `~/.bashrc` or `~/.zshrc` if you do not find that. Here are examples:



```bash
export CXXFLAGS="-fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /your_conda_absolute_path/miniconda3/include"
```

```bash
export CFLAGS="-march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /your_conda_absolute_path/include"
```

```bash
export LDFLAGS="-Wl,-O2 -Wl,--sort-common -Wl,--as-needed -Wl,-z,relro -Wl,-z,now -Wl,--disable-new-dtags -Wl,--gc-sections -Wl,--allow-shlib-undefined -Wl,-rpath,/your_conda_absolute_path/miniconda3/lib -Wl,-rpath-link,/your_conda_absolute_path/miniconda3/lib -L/your_conda_absolute_path/miniconda3/lib" 
```

**You must change your_conda_absolute_path to your path of conda**. I installed conda in the base environment, and I also recommend gcc or clang be installed in the base environment. 



## 2. Add htslib dependencies



**[Htslib]** is a classic and well-known library used to manage bioinformatics format files, including *bam*, *sam*, *vcf*, and *bcf,* etc.

**Htslib** is implemented in *C* so that it is able to meet high performance requirements. So far, many popular tools, for example *[samtools]* and *[bcftools],* are all based on htslib. There are wrappers for other languages like *[pysam]* based on *Python*, *[rhtslib]* based on *R, and* *[rust_htslib]* based on *Rust*. That will enable people using different languages to apply htslib in their applications.

*[Zlib]* is only one library that htslib must depend on. In the meantime, htslib has other dependencies, which enables htslib to have more rich features. Here, I will not explain what feature dependencies will provide respectably. The detailed information can be found on the [Htslib] website. **However, \*Conda\* can install htslib easily by `conda install htslib`**. Keep in mind that we can also define the library version with `conda install htslib=1.15.1` As mentioned above, htslib may have been installed in your environment if samtools or bcftools are already installed.



### 2.1 Cmake Scripts



I use [Cmake] as a build system, and here are several useful and valuable Cmake scripts. You can use that in your project. I think it will help you fix most dependency problems with htslib. 



- [htslib.cmake] 

- [FindHTSlib.cmake] 

- [FindDeflate.cmake]

- [zlib.cmake]

  

  

  Firstly, I assume your directory structure looks like this:

  

  ```bash
  .
  ├── CMakeLists.txt
  ├── build
  ├── cmake
  ├── include
  └── source
  ```

  

  These cmake scripts should be found in the `cmake` directory. We can use in CmakeLists.txt

  ```cmake
  list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
  include(htslib)
  ```

  If `htslib` is found in your current environment, `cmake` will define the variables `HTSlib_FOUND` and HTSlib_INCLUDE_DIRS`` and `HTSlib_LIBRARIES`. Otherwise, `cmake` will build static htslib from sources, and `cmake` will check if every dependency of htslib exists respectively. If it exists, `cmake` will use the compiler flags of htslib to build a static library. Otherwise, `cmake` will disable related compiler flags. However, [zlib] is the only one that must exist. So, if [zlib] does not exist, `cmake` will help you build [zlib] from source. All these cmake scripts can be found at the above link. Please feel free to explore that.

  

  Indeed, we use [FindHTSlib.cmake] to search for htslib. [htslib.cmake] is shown below, and I have added some comments to explain how it works.

  

  ```cmake
  include(ExternalProject)
  
  # find htslib by using FindHTSlib.cmake
  find_package(HTSlib) 
  if(HTSlib_FOUND)
    message(STATUS "HTSlib_USE_STATIC_LIBS: ${HTSlib_USE_STATIC_LIBS}")
  
    # not found, try to build it to static libs from source
  else()
    set(htslib_PREFIX ${CMAKE_BINARY_DIR}/cmake-ext/htslib-prefix)
    set(htslib_INSTALL ${CMAKE_BINARY_DIR}/cmake-ext/htslib-install)
  
    if(CMAKE_GENERATOR STREQUAL "Unix Makefiles")
      set(MAKE_COMMAND "$(MAKE)")
    else()
      find_program(MAKE_COMMAND NAMES make gmake)
    endif()
  
    message(STATUS "Building static htslib from source")
    message(NOTICE "Set ENV CFLAGS and CXXFLAGS if you use conda environment!")
  
    set(disable_flags --disable-gcs --disable-s3 --disable-plugins)
  
    # find lzma if not founed the disable compiler flags
    find_package(LibLZMA)
    if(LIBLZMA_FOUND)
      include_directories(SYSTEM ${LIBLZMA_INCLUDE_DIRS})
      list(APPEND deps_LIB ${LIBLZMA_LIBRARIES})
    else()
      list(APPEND disable_flags --disable-lzma)
    endif()
    
  	# find curl if not founed the disable compiler flags
    find_package(CURL)
    if(CURL_FOUND)
      include_directories(SYSTEM ${CURL_INCLUDE_DIRS})
      list(APPEND deps_LIB ${CURL_LIBRARIES})
    else()
      list(APPEND disable_flags --disable-libcurl)
    endif()
  	
  	#find bzip2 if not founed the disable compiler flags
    find_package(BZip2)
    if(BZIP2_FOUND)
      include_directories(SYSTEM ${BZIP2_INCLUDE_DIRS})
      list(APPEND deps_LIB ${BZIP2_LIBRARIES})
    else()
      list(APPEND disable_flags --disable-bz2)
    endif()
  
    # find defalte if not founed the disable compiler flags
    find_package(Deflate)
    if(Deflate_FOUND)
      include_directories(SYSTEM ${Deflate_INCLUDE_DIRS})
      list(APPEND deps_LIB ${Deflate_LIBRARIES})
    endif()
  
    message(STATUS " dependencies: ${deps_LIB}")
    # compiler and install htslib from source
    ExternalProject_Add(
      htslib
      PREFIX ${htslib_PREFIX}
      URL https://github.com/samtools/htslib/releases/download/1.15.1/htslib-1.15.1.tar.bz2
      BUILD_IN_SOURCE 1
      UPDATE_COMMAND ""
      CONFIGURE_COMMAND autoreconf -i && ./configure --prefix=${htslib_PREFIX} ${disable_flags}
      BUILD_COMMAND ${MAKE_COMMAND} lib-static
      INSTALL_COMMAND ${MAKE_COMMAND} install prefix=${htslib_INSTALL}
    )
  	
  	# user pre-defined variable (-DZLIB_BUILD=ON) to control is build zlib from sources
    message(STATUS "ZLIB_BUILD: ${ZLIB_BUILD}")
    if(ZLIB_BUILD)
      include(cmake/zlib.cmake)
      add_dependencies(htslib zlib)
    else()
      find_package(ZLIB)
      if(ZLIB_FOUND)
        include_directories(SYSTEM ${ZLIB_INCLUDE_DIRS})
        list(APPEND deps_LIB ${ZLIB_LIBRARIES})
      else()
        # build zlib from source
        message(STATUS "Building zlib from source")
        include(cmake/zlib.cmake)
        add_dependencies(htslib zlib)
        list(APPEND deps_LIB ${zlib_LIBRARIES})
      endif()
    endif()
    list(APPEND deps_LIB ${zlib_LIBRARIES})
  	
  	# define two variables for usage
    set(HTSlib_INCLUDE_DIRS ${htslib_INSTALL}/include)
    set(HTSlib_LIBRARIES ${htslib_INSTALL}/lib/libhts.a ${deps_LIB})
    message(STATUS "HTSlib_INCLUDE_DIRS: ${HTSlib_INCLUDE_DIRS}")
    message(STATUS "HTSlib_LIBRARIES: ${HTSlib_LIBRARIES}")
  
  endif()
  ```

   

  Now you can use the htslib like this in cmake:

  ```cmake
  add_library(test test.h test.cpp)
  
  # if htslib is not in your environment
  if(NOT HTSlib_FOUND)
  	# if htslib build from source you need add this
    add_dependencies(${PROJECT_NAME} htslib)
  endif()
  
  target_link_libraries(test PRIVATE ${HTSlib_LIBRARIES})
  target_include_directories(test PRIVATE ${HTSlib_INCLUDE_DIRS} ${HTSlib_INCLUDE_DIRS}/htslib)
  
  ```

  You can change `PRIVATE` to `PUBLIC` if you want to export htslib. It depends on your goal.

  

  

## 3. Recommend Practices



In the beginning, I recommend you use a suitable directory structure. Here are a few of the best examples: 



- https://github.com/TheLartians/ModernCppStarter
- https://github.com/cpp-best-practices/gui_starter_template
- https://github.com/filipdutescu/modern-cpp-template

I prefer the first one. Using a good template can help you learn other tools in order to make the project better. After you dive into one of the templates, I think you will learn more than you imagined.

## 4. Summary



In this blog, I will introduce how to install `C++` dependencies and how to configure `htslib` in your development environment. Various cmake scripts are provided and can help the project fix `htslib` dependency problems smoothly. The source of these scripts at the top. If you have any questions, please feel free to reach me. Thanks for your time and reading!





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

[htslib.cmake]: https://gist.github.com/cauliyang/c6d69c43a8a05266c6d05bc2c5324f45
[finddeflate.cmake]: https://gist.github.com/cauliyang/a39f3b10ed3d85d2ca13645d81dd829e
[findhtslib.cmake]: https://gist.github.com/cauliyang/01f360df26fa287a1e111dd00bb076e4
[zlib.cmake]: https://gist.github.com/cauliyang/0aa4487e58a0e5c830915ddbade5ce71
[cmake]: https://cmake.org/

