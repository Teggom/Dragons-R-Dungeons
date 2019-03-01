max <- c(5)
min <- c(3)
levels <- 2:100
for(each in levels){
  max <- c(max, 4+ceiling(each/10)+max[length(max)])
  min <- c(min, 2+floor(each/30)+min[length(min)])
}

random <- c(sum(sample(x = 3:5, size = 1000, replace = T))/1000)
for(each in 2:100){
  random <- c(random, random[length(random)]+sum(sample(x = (2+floor(each/30)):(4+ceiling(each/10)), size = 1000, replace = T))/1000)
}
plot(max, type = 'l', lwd = 3, xlab = "level", ylab = "Strength", main = "Strength over level")
lines(random)
lines(min, lwd = 3)

### Health
max <- c(15)
min <- c(10)
levels <- 2:100
for(each in levels){
  max <- c(max, 5+ceiling(each/30)+max[length(max)])
  min <- c(min, 4+floor(each/40)+min[length(min)])
}

random <- c(sum(sample(x = 10:15, size = 1000, replace = T))/1000)
for(each in 2:100){
  random <- c(random, random[length(random)]+sum(sample(x = (4+floor(each/40)):(5+ceiling(each/30)), size = 1000, replace = T))/1000)
}
plot(max, type = 'l', lwd = 3, xlab = "level", ylab = "Health", main = "Health over level")
lines(random)
lines(min, lwd = 3)

### Mana
max <- c(8)
min <- c(5)
levels <- 2:100
for(each in levels){
  max <- c(max, 2+ceiling(each/50)+max[length(max)])
  min <- c(min, 1+floor(each/50)+min[length(min)])
}

random <- c(sum(sample(x = 5:8, size = 1000, replace = T))/1000)
for(each in 2:100){
  random <- c(random, random[length(random)]+sum(sample(x = (1+floor(each/50)):(2+ceiling(each/50)), size = 1000, replace = T))/1000)
}
plot(max, type = 'l', lwd = 3, xlab = "Level", ylab = "Mana", main = "Mana over Level")
lines(random)
lines(min, lwd = 3)