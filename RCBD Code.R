df2 = read.table("RCBD.txt", header=TRUE)
df2 

r = c(t(as.matrix(df2))) # response data
r

f = c("Item1", "Item2", "Item3")   # treatment levels
k = 3                    # number of treatment levels 
n = 6                    # number of control blocks

tm = gl(k, 1, n*k, factor(f))   # matching treatment 
tm

blk = gl(n, k, k*n)             # blocking factor 
blk

av = aov(r ~ tm + blk)
summary(av) 
