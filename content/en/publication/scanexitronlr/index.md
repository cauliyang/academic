---
title: "ScanExitronLR: characterization and quantification of exitron splicing events in long-read RNA-seq data"

draft: false
# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here 
# and it will be replaced with their full name and linked to their profile.
authors:
- admin


# Author notes (optional)
author_notes:
- "Equal contribution"

date: "2022-09-13T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2022-09-12T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "*Bioinformatics*"
publication_short: In *Bioinform*

abstract: Exitron splicing is a type of alternative splicing where coding sequences are spliced out. Recently, exitron splicing has been shown to increase proteome plasticity and play a role in cancer. Long-read RNA-seq is well suited for quantification and discovery of alternative splicing events; however, there are currently no tools available for detection and annotation of exitrons in long-read RNA-seq data. Here we present ScanExitronLR, an application for the characterization and quantification of exitron splicing events in long-reads. From a BAM alignment file, reference genome and reference gene annotation, ScanExitronLR outputs exitron events at the individual transcript level. Outputs of ScanExitronLR can be used in downstream analyses of differential exitron splicing. In addition, ScanExitronLR optionally reports exitron annotations such as truncation or frameshift type, nonsense-mediated decay status, and Pfam domain interruptions. We demonstrate that ScanExitronLR performs better on noisy long-reads than currently published exitron detection algorithms designed for short-read data.ScanExitronLR is freely available at https://github.com/ylab-hi/ScanExitronLR and distributed as a pip package on the Python Package Index.Supplementary data are available at Bioinformatics online.

# Summary. An optional shortened abstract.
summary: 

tags: []

# Display this page in the Featured widget?
featured: false

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'en/publication/scanexitronlr/scanexitron.pdf'
url_code: 'https://github.com/ylab-hi/ScanExitronLR'
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/pLCdAaMFLTE)'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""

---
