df1 = read.table("CRD.txt", header=TRUE)
df1 

r = c(t(as.matrix(df1))) # response data 
r

f = c("Item1", "Item2", "Item3")   # treatment levels 
k = 3                    # number of treatment levels 
n = 6                    # observations per treatment

tm = gl(k, 1, n*k, factor(f))   # matching treatments 
tm 

av = aov(r ~ tm)
summary(av) 
