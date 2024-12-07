iris=read.csv("iris.csv")  #读取iris.csv文件 (2分)
iris=na.omit(iris)  #填写合适的函数名，删除缺失值  (2分)
iris=scale(iris)
d=dist(iris) #填写合适的函数名，计算距离矩阵  (2分)
hc=hclust(d,method="ave") #填写合适的函数名，采用平均距离对数据进行层次聚类 (2分)
cutree(hc,k=2) #将数据分成2类
cat("根据分类结果，第6个和66个样本是否被分在同一类？","是") #填 是/否 (2分)