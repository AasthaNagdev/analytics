women

reg=lm(weight~height, data=women)
summary(reg)
(ndata = data.frame(height= c(58.5, 60.7)))
(p= predict(reg, newdata = ndata))
cbind(ndata, p)
plot(reg)

