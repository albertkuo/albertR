#' Summarize setdiff between two vectors
#'
#' Given two vectors, apply setdiff in both directions and intersect
#' and prints a nice summary message of results
#'
#' @param x,y vectors
#'
#' @export
#'
#' @return \code{setdiffall} returns a list of 3 elements: setdiff in both directions and the intersection
#'
#' @examples
#' x <- 1:3
#' y <- 1:4
#' setdiffall(x, y)
#'
#'
setdiffall <- function(x, y){
    sd_xy <- setdiff(x, y)
    sd_yx <- setdiff(y, x)
    intersection <- intersect(x, y)

    message(paste("", length(intersection), "elements were found in both x and y.\n",
                   length(sd_left), "of the", length(x), "elements in x were not found in y.\n",
                   length(sd_right), "of the", length(y), "elements in y were not found in x."))

    return(list(sd_xy = sd_left,
                sd_yx = sd_right,
                intersection = intersection))
}
