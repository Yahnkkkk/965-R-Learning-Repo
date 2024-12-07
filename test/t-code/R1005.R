#填写答案时请删除掉下划线
library(rpart) #加载rpart包(2分)
set.seed(201) #设置种子数为201 (2分)
train=sample(1:nrow(iris),0.75*nrow(iris)) #对iris数据集抽样75%  (2分)
tdata=iris[train,]  #设置训练集
vdata=iris[-train,]  #剩下的25%作为测试集  (2分)
tree=rpart(tdata$Species~.,data=tdata,method="class",parms=list(split="information"))#建立决策树，请填写正确的函数名  (2分)
print(tree)#查看决策树
cat("根节点是","Petal.Length")  #根据查看的结果，将根节点属性的名称填写在下划线中  (2分)
pred_tree=predict(tree,newdata=vdata,type="class") #用决策树对测试集进行预测  (2分)
conf_tree=table(vdata$Species,pred_tree,dnn=c("真实值","预测值")) #生成混淆矩阵 (2分)
sum(diag(conf_tree))/sum(conf_tree) #在下划线出填写合适的函数名，使得公式能够计算准确率 (2分)
cat("预测准确率为",0.9473684) #在下划线处填写准确率数值，按程序实际运行填写，不要四舍五入 (2分)