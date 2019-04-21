style_slopegraph<-function(){
  ggplot2::theme(
    legend.position = "bottom",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(color = "#222222"),

    panel.grid.major.y = ggplot2::element_line(color = "#cbcbcb",size = .1),
    panel.grid.major.x = ggplot2::element_line(linetype = 2,color = "#cbcbcb" ),
    panel.background = ggplot2::element_blank(),
  )
}
