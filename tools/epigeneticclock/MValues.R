MToBeta = function(M) (1+2^(-M))^(-1)

looksLikeMValue <- function(min.value, max.value){
    converted.min  <- MToBeta(min.value)
    converted.max  <- MToBeta(max.value)
    out.of.range <- min.value < -0.05 | max.value > 1.05
    converted.in.range  <- converted.min > -0.05 & converted.max < 1.05
    return(out.of.range & converted.in.range)
}
