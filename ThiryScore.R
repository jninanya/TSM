#=========================================#
# Function to calculate the Thiry's score #
#=========================================#

ThiryScore <- function(x, inv = FALSE){
  
  xrange = range(x)
  
  # scores
  df1 = data.frame("x" = x)
  df1$score = NA
  
  # data range 
  df3 = data.frame("score" = 1:10)
  df3$range = NA
  df3$count = NA
 
  # Score calculation for SSI and TOL 
  if(inv == TRUE){
    r = seq(xrange[2], xrange[1], length = 11)
    
    for(i in 1:length(x)){
      ix = x[i]
      if(ix <= r[1] & ix > r[2]){
        df1$score[i] = 1
      }else if(ix <= r[2] & ix > r[3]){
        df1$score[i] = 2
      }else if(ix <= r[3] & ix > r[4]){
        df1$score[i] = 3
      }else if(ix <= r[4] & ix > r[5]){
        df1$score[i] = 4
      }else if(ix <= r[5] & ix > r[6]){
        df1$score[i] = 5
      }else if(ix <= r[6] & ix > r[7]){
        df1$score[i] = 6
      }else if(ix <= r[7] & ix > r[8]){
        df1$score[i] = 7
      }else if(ix <= r[8] & ix > r[9]){
        df1$score[i] = 8
      }else if(ix <= r[9] & ix > r[10]){
        df1$score[i] = 9
      }else if(ix <= r[10] & ix >= r[11]){
        df1$score[i] = 10
      }
    }
    df2 <- df1[order(df1$x, decreasing = TRUE),]
    
  # Score calculation for MP, GMP and DTI
  }else if(inv == FALSE){
    r = seq(xrange[1], xrange[2], length = 11)
    
    for(i in 1:length(x)){
      ix = x[i]
      if(ix >= r[1] & ix < r[2]){
        df1$score[i] = 1
      }else if(ix >= r[2] & ix < r[3]){
        df1$score[i] = 2
      }else if(ix >= r[3] & ix < r[4]){
        df1$score[i] = 3
      }else if(ix >= r[4] & ix < r[5]){
        df1$score[i] = 4
      }else if(ix >= r[5] & ix < r[6]){
        df1$score[i] = 5
      }else if(ix >= r[6] & ix < r[7]){
        df1$score[i] = 6
      }else if(ix >= r[7] & ix < r[8]){
        df1$score[i] = 7
      }else if(ix >= r[8] & ix < r[9]){
        df1$score[i] = 8
      }else if(ix >= r[9] & ix < r[10]){
        df1$score[i] = 9
      }else if(ix >= r[10] & ix <= r[11]){
        df1$score[i] = 10
      }
    }
    
    df2 <- df1[order(df1$x),]
    
  }
  
  # range output 
  rng = paste0("[", round(r[1:9],2), " - ", round(r[2:10],2), ">")
  rng[10] = paste0("[", round(r[10],2), " - ", round(r[11],2), "]")
  
  df3$range <- rng

  #Count output
  for(k in 1:10){
    df3$count[k] = sum(df1$score == k)
  }

  
  df4 <- cor(df1$score, df1$x)
  
  ThiryScore = list("score" = df1, "order" = df2, "range" = df3, "corr" = df4)
  
}
