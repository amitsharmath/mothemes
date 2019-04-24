# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'
#   Build documentation        'Ctrl/Cmd + Shift + D'

style_base<-function(font='Helvetica'){

  ggplot2::theme(
    plot.title = ggplot2::element_text(family = font, face = "bold", color = "#222222"),
    plot.subtitle = ggplot2::element_text(family = font, margin = ggplot2::margin(9, 0, 9, 0)),
    plot.caption = ggplot2::element_blank(),

    legend.position = "bottom",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(family = font, color = "#222222"),

    axis.title = ggplot2::element_blank(),
    axis.text = ggplot2::element_text(family = font,color = "#222222"),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),
    axis.ticks = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),

    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(color = "#cbcbcb",linetype = 2,size = .3),
    panel.grid.major.x = ggplot2::element_line(color = "#cbcbcb",linetype = 2,size = .3),
    panel.background = ggplot2::element_blank(),

    strip.background = ggplot2::element_rect(fill = "white"),
    strip.text = ggplot2::element_text( hjust = 0))
}

style_base_dark<-function(font='Helvetica'){

  ggplot2::theme(
    plot.title = ggplot2::element_text(family = font, face = "bold", color = "white"),
    plot.subtitle = ggplot2::element_text(family = font, margin = ggplot2::margin(9, 0, 9, 0)),
    plot.caption = ggplot2::element_blank(),

    legend.position = "bottom",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(family = font, color = "white"),

    axis.title = ggplot2::element_blank(),
    axis.text = ggplot2::element_text(family = font,color = "white"),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),
    axis.ticks = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),

    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(color = "#383b44",linetype = 1,size = .3),
    panel.grid.major.x = ggplot2::element_line(color = "#383b44",linetype = 1,size = .3),
    panel.background = ggplot2::element_rect(fill = "#262A33"),

    plot.background = ggplot2::element_rect(fill = "#262A33"),

    strip.background = ggplot2::element_rect(fill = "#262A33"),
    strip.text = ggplot2::element_text( hjust = 0,color = "white"))
}

style_slopegraph<-function(font='Helvetica'){
  ggplot2::theme(
    legend.position = "bottom",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(family = font, color = "#222222"),

    panel.grid.major.y = ggplot2::element_line(color = "#cbcbcb",size = .1),
    panel.grid.major.x = ggplot2::element_line(linetype = 2,color = "#cbcbcb" ),
    panel.background = ggplot2::element_blank()
  )
}
