run_analysis <- function(){
     
     ## Set the directory
     datadir <- paste(getwd(),"/UCI HAR Dataset", sep="")
     
     ## Pull in column headers
     features <- read.table(paste(datadir,"/features.txt", sep=""))
     colheads <- c("subject_id","activity",as.vector(features$V2))
     
     ## Pull in all subject numbers
     sub1 <- read.table(paste(datadir,"/train/subject_train.txt", sep="")) 
     sub2 <- read.table(paste(datadir,"/test/subject_test.txt", sep="")) 
     allsubs <- rbind(sub1,sub2)
     
     ## Pull in activity labels & replace activity IDs with activity names
     actlabels <- read.table(paste(datadir,"/activity_labels.txt", sep=""))
     y1 <- read.table(paste(datadir,"/train/y_train.txt", sep=""))
     y2 <- read.table(paste(datadir,"/test/y_test.txt", sep=""))
     allnamedy <- data.frame(merge(rbind(y1,y2),actlabels,by="V1")$V2)
     
     ## Pull in all observation data
     x1 <- read.table(paste(datadir,"/train/x_train.txt", sep=""))
     x2 <- read.table(paste(datadir,"/test/x_test.txt", sep=""))
     allx <- rbind(x1,x2)
     
     ## Combine all data & add column headers
     alldata <- cbind(allsubs,allnamedy,allx)
     colnames(alldata) <- colheads
     
     ## Create a vector of identifiers & mean & std column names
     colsfiltered <- c("subject_id","activity", 
                       colheads[grep("mean\\(\\)", colheads)],
                       colheads[grep("std\\(\\)", colheads)])
     
     ## Make new data frame of identifiers & mean & std columns
     newdata <- alldata[,(names(alldata) %in% colsfiltered)]
     colsfiltered <- colnames(newdata)
     
     ## Summarize the new data frame by average data on factors subject & activity
     summdata <- aggregate(newdata[,3:68],by=list(newdata$subject_id,
                                                  newdata$activity),FUN=mean)
     colnames(summdata) <- colsfiltered
     
     ## Write a txt file of completed summary data and clear variables from cache
     write.table(summdata, file="summarized_data.txt", row.name=FALSE)
     rm(list = setdiff(ls(), lsf.str()))
}
