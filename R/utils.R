flip_xaxis_text<-function(){
  ggplot2::theme(
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10),angle = 90)
  )
}

substyle_vert_spacer<-function(spacer_color = 'white',spacer_size = 1.5){
  ggplot2::theme(
    panel.ontop = T,
    panel.grid.major.y = ggplot2::element_blank(),
    panel.grid.major.x = ggplot2::element_line(color = spacer_color,linetype = 1,size = spacer_size),
    #     panel.grid.minor.x = ggplot2::element_line(color = "white",linetype = 1,size = .3),
  )
}


### helper function
.get_element_text<-function(font = 'Helvetica', fontsize = 12, italic = F,
                            bold = F, color = 'black' ,hjust = 0, vjust = 0){
  face='plain'
  if (italic)
    face='italic'
  if (bold)
    face='bold'
  if(italic && bold)
    face = 'bold.italic'

  ggplot2::element_text(family = font, size = fontsize, face=face,color = color,
                        hjust = hjust,vjust = 0)
}



set_axistext_font<-function(font='Helvetica', fontsize = 12, italic = F, bold = F,color='black'){
  ggplot2::theme(
    axis.text = .get_element_text(font = font,fontsize = fontsize,italic = italic,bold = bold, color = color),
  )
}


set_axistitle_font<-function(font='Helvetica', fontsize = 12, italic = F, bold = T,color='black'){
  ggplot2::theme(
    axis.title = .get_element_text(font = font,fontsize = fontsize,italic = italic,bold = bold, color = color,hjust = 0.5),
  )
}

set_plot_title_fontsize<-function(font='Helvetica', fontsize = 24, italic = F, bold = F,color='black'){
  ggplot2::theme(
    plot.title <- .get_element_text(font = font,fontsize = fontsize,
                                    italic = italic,bold = bold,
                                    color = color),
  )
}

set_plot_subtitle_font<-function(font='Helvetica', fontsize = 20, italic = F, bold = F,color='black'){
  ggplot2::theme(
    plot.subtitle <- .get_element_text(font = font,fontsize = fontsize,
                                      italic = italic,bold = bold,
                                      color = color),
  )
}

set_caption_font<-function(font='Helvetica', fontsize = 8, italic = F, bold = F,color='black'){
  ggplot2::theme(
    plot.caption = .get_element_text(font = font,fontsize = fontsize,
                                     italic = italic,bold = bold,
                                     color = color)
  )
}


set_facet_style<-function(bg_fill = '#097392',font='Helvetica', fontsize = 12, italic = F, bold = F,
                          color='white',hjust = 0, inside = T, spacing_units_in_pt = 10, border = F){
  if(inside)
    placement = 'inside'
  else
    placement = 'outside'

  panel_border<-element_blank()

  if(border)
    panel_border<-element_rect(linetype = 'solid',fill = F,size = .1)


  ggplot2::theme(
    strip.background = ggplot2::element_rect(fill = bg_fill,color = 'white'),
    strip.placement = placement,
    strip.switch.pad.wrap = unit(1, "cm"),
    strip.switch.pad.grid = unit(1, "cm"),
    strip.text = .get_element_text(font = font,fontsize = fontsize,
                                   italic = italic,bold = bold,
                                   color = color,hjust = hjust),
    panel.border = panel_border,
    panel.spacing = unit(spacing_units_in_pt,'pt')

  )
}

