P=matrix(c(0.8,0.3,0.2,0.7),2,2) #输入如题目中所示矩阵 (3分)
P2=P%*%P #在划线处填写合适的的运算符，求出两步状态转移概率矩阵 (2分)
P0=c(0.5,0.5) #初始概率向量
P0%*%P2#预测2个周期后的概率向量 (3分)
cat("2个周期后，处于状态1的概率是：",0.575) #根据题目运行结果填写，不要四舍五入 (2分)