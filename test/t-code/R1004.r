#填写答案时请删除掉下划线
#请先自行设置好工作路径
wine=read.csv("wine.csv") #读取wine.csv文件到wine变量中(2分)
y=eigen(cor(wine))#利用相关系数矩阵计算特征值与特征向量(2分)
sum((y$values[1:5]))/sum(y$values)#计算前五个主成分的累计贡献率(2分)
cat("前五个主成分的累计贡献率是",0.8078759)#根据上一步的计算结果， 将累计贡献率填写在下划线处。(2分)