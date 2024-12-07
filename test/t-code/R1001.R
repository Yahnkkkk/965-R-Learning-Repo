#请先确认datasets包已经被加载，如果没有，请先自行加载程序包
dim(mtcars)   #填写适当函数名查看数据维度(2分)
mtcars=scale(mtcars) #将所有数据进行z-score规范化(2分)
mtcars=data.frame(mtcars)  #将mtcars转化成数据框格式 (2分)
plot(mtcars$hp,mtcars$mpg,xlab = '排量',ylab = '油耗')   #以油耗为Y轴，排量为X轴，其余为默认参数，画散点图（4分）
mx=lm(mpg~hp,data=mtcars)#填写适当函数名建立线性回归函数(2分)
summary(mx)#显示回归结果(2分)
cat("回归模型中hp的系数是",-7.762e-01) #将答案数字填入划线处(3分)
cat("残差中位数是",-0.1469) #将答案数字填入划线处(3分)