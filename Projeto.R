dir = getwd()
setwd(dir)
library(RSQLite)
data = dbConnect(SQLite(), dbname = "train.sqlite3")
dbGetInfo(data)
head_data = dbGetQuery(data, "SELECT * FROM train LIMIT 100")
head_data[-1,] #solução temporária para os headers duplos.
data_random = dbGetQuery(data, "SELECT * FROM train WHERE random() % 100000 = 0 LIMIT 1000000")
View(table(data_random[[2]]))