#填写答案时请删除掉下划线
#请先自行设置好工作路径
load(wine.rdata)#读取wine.rdata数据集(2分)
table(wine$class) #查看class列中各类别的记录条数(2分)
cat("class中属于第1类的样本有",59,"条")  #将答案数字填入划线处(3分)
wine=subset(wine,select=-class)#删除掉数据集的第1列(2分)
wine=scale(wine)
library(factoextra)#加载factoextra程序包(2分)
fviz_nbclust(wine,FUNcluster = kmeans,method="silhouette") #用k均值方法确定聚类的簇数(2分)
set.seed(119) #设置种子数为119  （2分）
kjl=kmeans(wine,3)  #根据上一步的的结果在下划线处填写聚类的簇数(3分)
kjl
cat("第2类中Magnesium参数的均值是",0.5228924)   #根据summary的结果填写答案在下划线处(2分)
cat("第66条记录的聚类结果是第",3,"类")   #根据summary的结果填写答案在下划线处(2分)


