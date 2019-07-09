hh<-78
hello2 <- function() {
  cat("Hello,",h,sep="")
}

#' Add an example 1.
#'
#' \code{add} an example 2.
#'
#' Add an example 3.
#'
#' @param  1 a
#' @return  2 b
#' @export
hello3 <- function() {
  cat("Hello,86")
}

#' This is example 2.
#'
#' \code{add} an example 2.
#'
#' Which is an example.
#'
#' @param  a must be ib function.
#' @param  b if a must b.
#' @return  mtcars
#' @export
qplot_001 <- function (a,b){
  ggplot2::qplot(a, b, data = data.frame(a1=rep(a,10),b1=rep(b,10)), colour = I(col))
}

col <- "blue"
