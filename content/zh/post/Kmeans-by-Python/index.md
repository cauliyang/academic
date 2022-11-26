---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Kmeans by Python
subtitle: 使用Python实现kmeans算法
summary: 本篇文章，详细记录如何使用**Python**进行**K-means**，分别用两种方法实现，并记录如何选取K值，并进行可视化评估结果
authors: [admin]
tags: [Python]
categories: [Algorithm]
date: 2021-04-05T12:54:10+08:00
lastmod: 2021-04-05T12:54:10+08:00
featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/)'
  focal_point: Center
  placement: 0
  preview_only: false
  alt_text: An optional description of the image for screen readers.

# links:
# - name: Custom Link
#   url: http://example.org

#links:
#  - icon_pack: fab
#    icon: facebook
#    name: Jupyter Notebook
#    url: 'https://github.com/cauliyang/Python_book_practice/blob/master/effective_python_practice.ipynb'

url_pdf: ''
url_code: https://github.com/cauliyang/work/tree/master/001_k_mean
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

## 1. **K-means**概念介绍

### 1.1 基础概念

**K-means**是一种常用的无监督学习技术，用于在无法知道正确答案下发现数据中隐藏的结构，聚类的目标是在数据中找到自然分组，确保相同集群中元素比不同的集群中元素更加相似。**K-means**方法非常擅长识别球形数据，其缺点是必须指定集群数**K**。如果选择**K**值不当会造成分群效果不好，后文将会介绍两种方法用来评估**K**值及分群效果。并且本文采用两种方式实现**K-means**

- 使用**scikit-learn**模块进行**K-means**聚类分析。
- 从头手写**K-means**方法。

### 1.2 算法原理

1. 随机在样本中选取**K**质心作为起始聚类的中心。
2. 将每个样本根据欧式距离分到最近的质心$\\mu$所在的群中。
3. 将所有样本分群后，重新计算以每个群的中心作为新的质心。
4. 重复 2，3 两步，知道质心不再改变，或者达到用户自定义的阈值或最大迭代数。

**欧式距离**的计算方法为：

$$d(x,y)^2 = \\sum^{m}\_{j = 1}(x_j  - y_j )^2 = \\left|x - y \\right|^2_2$$

其中$j$代表数据的纬度。
基于欧式距离我们可以把分群的过程描述为一个优化的问题，是一种最小化**群内误差平方和（SSE）**的迭代方法也被称为**群惯性**。

$$SSE = \\sum^n\_{i=1}\\sum^k\_{j=1} w^{(i,j)}\\left|x^{(i)} - \\mu^{(i)} \\right|^2_2 $$

其中 $i$代表样本索引 $j$代表分群索引

## 2. 使用**scikit-learn**实现**K-means**方法

### 2.1 创建测试数据并实现算法

首先导入所需要的模块：

```python
# import module
import numpy as np
from matplotlib import cm
from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt
from sklearn.metrics import silhouette_samples
```

因为二维数据可是简单的绘制在笛卡尔坐标系上，所以生成二维测试数据进行测试：

```python
# create tested data
X, y = make_blobs(
    n_samples=150,  # volume of data
    n_features=2,  # number of feature
    centers=3,  # number of centroid
    cluster_std=0.5,  # distribution of data
    shuffle=True,
    random_state=0,
)
```

绘图查看原始数据：

```python
# plot tested data
plt.figure()
plt.scatter(X[:, 0], X[:, 1], c="white", marker="o", edgecolor="black", s=50)
plt.grid()
plt.show()
```

![](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/1572156791933.png)
从图中可以看出创建的测试数据有明显的分群情况,当然在真实的数据当中原始数据可能没有这么理想。我们先在没有推理的情况下确定**K**的值为 3。

```python
# k-means
km = KMeans(
    n_clusters=3,  # K value
    init="random",
    n_init=10,  # number of repeatation
    max_iter=300,
    tol=1e-4,
    random_state=0,
)
# predict labels
y_km = km.fit_predict(X)
```

我们进行可视化分群结果：

```python
# creating function of plotting graph for reusing
def plot_res(y_km, X, n_cluster):
    # init colors and markers
    colors = ["lightgreen", "orange", "lightblue"][:n_cluster]
    markers = ["s", "o", "v"][:n_cluster]

    # plot the cluster to confirm the result of k-meams by sklearn
    for i, (c, m) in enumerate(zip(colors, markers)):
        plt.scatter(
            X[y_km == i, 0],
            X[y_km == i, 1],
            s=50,
            c=c,
            marker=m,
            edgecolor="black",
            label=f"cluster {i}",
        )

    # plot centroipd of  different clusters
    plt.scatter(
        km.cluster_centers_[:, 0],
        km.cluster_centers_[:, 1],
        s=250,
        marker="*",
        c="red",
        edgecolors="black",
        label="centroids",
    )
    # plot lengend
    plt.legend(scatterpoints=1)
    # plot grid
    plt.grid()
    plt.show()
```

![](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/1572158215803.png)
可以明显看到分群效果十分明显。不过其中还有许多问题：

1. 如何确实**K**值
2. 如何评估分群质量

### 2.2 如何选取**K**值

下面介绍如何使用肘解法选取合适的**K**值，肘解法目的是找出 SSE 变化幅度最大的**K**值。使用`km.inertia_` 即可调出$SSE$的值。

```python
distortions = []
# test different  numbers of cluster  to  pick up the best K
for i in range(1, 11):
    km = KMeans(n_clusters=i, init="k-means++", n_init=10, max_iter=300, random_state=0)

    km.fit(X)
    distortions.append(km.inertia_)
```

测试 1-11 的**K**值选取，并进行可视化查看结果。

```python
# plot the tested result for the best K

plt.plot(range(1, 11), distortions, marker="o")
plt.xlabel("Number of clusters")
plt.ylabel("Distortion")
plt.show()
```

![](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/1572160740933.png)
从图中我们可以看出在**K**值为 3 的时候，$SSE$变化幅度最大，即可得知**K**为 3 是最优解。

### 2.3 如何评估分群的质量

评价聚类质量的一种方法是**轮廓分析**，他可以应用于其他聚类算法，度量其紧密程度。计算轮廓系数的步骤为：

1. 计算集群内聚度$a^{(i)}$，即样本$x^{(i)}$于集群内所有其他点之间的平均距离。
2. 计算集群与最近集群的分离度$b^{(i)}$,即样本$x^{(i)}$与最近集群内所有样本的平均距离。
3. 计算轮廓系数$s^{(i)}$，即集群内聚度与集群分离度之差，除以两者中较大的一个。

$$s^{(i)} = \\frac{b^{(i)} - a^{(i)}}{\\max \\{{b^{(i)},a^{(i)}}\\}}$$

轮廓系数的范围在-1 到 1 之间，如果集群分离度和集群内聚度相等，即$b^{(i)}=a^{(i)}$。那么轮廓系数为 0，如果$b^{(i)} >> a^{(i)}$ 则接近理想的轮廓系数 1 。

可以使用**scikit-learn**中**metric**中的**silhouette_samples**计算样本的轮廓系数。也可以更方便的使用**silhouette_scores**直接计算所有样本的平均轮廓系数。下面显示**K**值基于 3 的分群结果。

```python
# we can use the graph of silhouette to evaluate  result
km = KMeans(
    n_clusters=3, init="k-means++", n_init=10, max_iter=10, tol=1e-04, random_state=0
)
y_km = km.fit_predict(X)
```

绘制轮廓图进行可视化，直观的查看群内轮廓系数。

```python
# defining function of plot-silhouette for reusing
# plot the graph of silhouette
def plot_sil(y_km, X):
    cluster_lables = np.unique(y_km)
    n_clusters = cluster_lables.shape[0]

    # using function of silhouette in sklearn to get silhouete scores
    silhouette_vals = silhouette_samples(X, y_km, metric="euclidean")

    # plot the graph
    y_ax_lower, y_ax_upper = 0, 0
    yticks = []
    for i, c in enumerate(cluster_lables):
        # get values of  each cluster
        c_silhouette_vals = silhouette_vals[y_km == c]
        c_silhouette_vals.sort()  # sort value for plotting
        y_ax_upper += len(c_silhouette_vals)
        color = cm.jet(float(i) / n_clusters)
        plt.barh(
            range(y_ax_lower, y_ax_upper),
            c_silhouette_vals,
            height=1.0,
            edgecolor="none",
            color=color,
        )
        yticks.append((y_ax_lower + y_ax_upper) / 2)
        y_ax_lower += len(c_silhouette_vals)

    silhouette_avg = np.mean(silhouette_vals)  # get the label of yticks
    plt.axvline(
        silhouette_avg, color="red", linestyle="--"
    )  # plot the avaerage of silhouette
    plt.yticks(yticks, labels=cluster_lables)
    plt.ylabel("Cluster")
    plt.xlabel("Silhouette coefficient")
    plt.show()
```

![](https://cdn.jsdelivr.net/gh/cauliyang/blog-image@main//img/1572162327225.png)

从图中我们可以看出轮廓系数不接近于 0，且接近于 1 表明我们的分群结果良好。且在图中轮廓系数的高度代表群内样本数量，如果样本数量相差太大，说明分群效果不是很好。图中虚线表示平均轮廓系数。

为更好的理解轮廓系数的使用，将**K**值变为 2，进行聚类。

```python
km = KMeans(
    n_clusters=2,  # value of k has changed
    init="k-means++",
    n_init=10,
    max_iter=10,
    tol=1e-04,
    random_state=0,
)
y_km = km.fit_predict(X)
```

使用上方作图函数，先观察分群效果。

![](https://cauliyang.github.io/post-images/1572162593247.png)

从图中可以看出分群效果很差，可视化轮廓系数查看结果。

![](https://cauliyang.github.io/post-images/1572162888640.png)

两个群的高度不一致表明分群效果不是很理想，且有的样本轮廓系数极低接近于 0。表示分群有很大的问题，需要重新思考**K**值的选取。

## 3. K-means from scratch

我们根据算法原理使用**Python**一步步实现**K-means**，首先展示我们所用到的数据集，有关基因在不同条件下处理的表达数据，其中基因数量为样本数量，处理方式为纬度。并且设计为**Terminal**端使用。

终端使用方法为：

`Usage : python k_mean.py k data max_it (cetroids)`

其中

- k_mean.py 为程序脚本
- k 为分群数量
- data 为原始数据文件
- max_it 为最大递归次数
- centroids 为初始的质心，用户可以选择提供或者不提供

原始数据：

| gene_expression | treat_1 | treat_2 | ... |
| --------------- | ------- | ------- | --- |
| g_1             | 0.2     | 0.5     | ... |
| g_2             | 1.4     | 1.6     | ... |
| ...             | 4.2     | 2.1     | ... |

### 3.1 Get parameters from terminal

导入所需的模块

```python
# import modules
import sys
import time
import numpy as np
from collections import Counter
from operator import itemgetter
```

从终端获取用户传递参数：

```python
# defining function for getting parameters from terminal
def get_argv():
    """
    get the parameters entered by user and return the dictionary parameters
    """
    # get parameters
    argv_list = sys.argv
    # init parameters
    argv_name = (
        "data",
        "init_cetroids",
        "gene_num",  # numbers of row
        "ndim",
        "max_it",  # max numbers of  iter
        "k",
    )
    #  determine whether user provide init-centroids according numbers of parameters
    if len(argv_list) == 4:
        # if not provide init-centroid
        _, k, file, max_it = argv_list
        # get information of file
        argv_tuple = get_Cetroid(file, int(k)) + (int(max_it), int(k))
    elif len(argv_list) == 5:
        # if provide init-centroid
        _, k, file, max_it, cetroid_file = argv_list
        # get information
        argv_tuple = get_Cetroid(file, int(k), cetroid_file=cetroid_file) + (
            int(max_it),
            int(k),
        )
    elif len(argv_list) < 4:
        #  if numbers of parameters is less than  need parameters  then print help
        print(
            """
            -------------------------------------------------
            Requirement : numpy

            Usage : python k_mean.py k data max_it (cetroids)

            Result_file : kmeans.out

            Contact : <liyangyang> <yangyangli.vince@gmail.com>

            -------------------------------------------------

            """
        )
        sys.exit(0)
    # return dictionary parameters
    return dict(zip(argv_name, argv_tuple))
```

### 3.2 Creating function of report

```python
# defining  function of reporting summary
def summary(kw, tim, kmeanout="kmeans.out"):
    """
    Create a summary function, count recursive times, run time, etc.。
    """

    # statistics for each Cluster data
    def print_cluster(kmean=kmeanout):
        # evaluate data
        counter = Counter(np.loadtxt(kmean, dtype=int)[:, 1])
        # produce report
        for clu, num in counter.most_common():
            print(f"    Cluster_{clu} : {num}")

    # create statistic header
    print("{:-^40}\n".format("Summary"))
    # print statstic report of each cluster
    print_cluster()
    # print overall information
    print(
        f"""
    Max_iter_number : {kw['max_it']}
    Cluster_number  :{kw['k']}
    Time  : {tim:.2f}s
    Date  : {time.asctime()}"""
    )
    # create statistic tial
    print("{:-<40}\n".format("-"))
```

### 3.3 Calculating Euclidean distance

```python
# defining function to calculate Euclidean distance
def eucl_Distance(init_cetroids, piece_data):
    """
    Calculate the Euclidean distance between each data and the centroid
    """
    distance = np.sqrt(np.sum((init_cetroids - piece_data) ** 2, axis=1))
    # return euclidean distance
    return distance
```

### 3.4 Getting centroid information and recursive function

```python
def get_Cetroid(file, k, cetroid_file=None):
    '''
    This function is used to get raw data file information: raw data, centroid, data volume, feature dimension
    '''
    # get content of  file
    data = np.loadtxt(file)
    # get information: data volume, feature dimension
    gene_num, ndim = data.shape
    # Determine whether the user provides a centroid, and  randomly if not provided
    if not (cetroid_file):
        # init centroid
        init_cetroids = np.zeros((k, ndim))
        # provide centroid randomly
        for i in range(k):
            index = int(np.random.uniform(0, gene_num))
            init_cetroids[i, :] = data[index, :]
    else:
        # if users provide centroid
        init_cetroids = np.loadtxt(cetroid_file)
    # return information
    return (data, init_cetroids, gene_num, ndim)


    def iter_Cetroid(**argv):
    '''
    Iterative clustering results
    '''
    # get necessary parameters
    data, init_cetroids, gene_num, ndim, max_it, k = argv.values()
    # init results
    Result = np.zeros((gene_num, 2), dtype=int)
    # grouping data according to Euclidean distance
    for i in range(gene_num):
        # get Euclidean distance
        distance = eucl_Distance(init_cetroids, data[i, :])
        # get the label of shortest distance
        cluster = distance.argmin()
        # grouping
        Result[i, :] = np.array([i, cluster])
    # verify that the results of the iteration are stable and return a new centroid
    Handle, argv['init_cetroids'] = assert_Result(data, init_cetroids, Result,
                                                  k)
    # return informattion
    return Result, Handle.all(), argv, max_it
```

### 3.5 Creating Body function and Main function

```python
def run(arg_dict, it_num=0):
    """
    the body of  k-means
    """
    # perform an iteration and verify that the results are stable
    # then  calculate the new centroid to be returned in dictionary form
    Result, handle, arg_dict, max_it = iter_Cetroid(**arg_dict)
    # determine whether the  condition of end iteration is reached
    if not (handle) and (it_num < max_it):
        # if not reach and the iteration continues
        it_num += 1
        # print numbers of iteration
        print(f"...ing Iter Number :{it_num}")
        # recursive iteration
        run(arg_dict, it_num=it_num)
    # if reach condition
    else:
        # change label,like change the labels from  0,1,2 to 1,2,3
        Result = Result + 1
        count_1 = Counter(Result[:, 1])
        # save result file
        np.savetxt("kmeans.out", Result, fmt="%d")


def main():
    """
    the program main function, integrate workflow, and generate reports
    """
    # get start time
    TIC = time.time()
    # get parameter through terminal
    ARGV = get_argv()
    # running the body function  of k-means
    run(ARGV)
    # get end time
    TOC = time.time()
    # generate report
    summary(ARGV, TOC - TIC)
```

谢谢观看，欢迎交流！😎
