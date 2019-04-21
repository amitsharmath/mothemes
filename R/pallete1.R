#' get a base list of rgb colors
#' @return the list of rgb value strings
#' examples
#' pattete1()
palettes <- list (
  bbc = c("#FAAB18", "#1380A1","#990000", "#588300")
)


mo_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- palettes[[name]]
  if (is.null(pal))
    stop("palette not available.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than palette unique colors")
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}
