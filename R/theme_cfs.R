cfspal <- c("#7D592E", "#002E51", "#1372AA", # <- that one is the CFS blue
                  "#041521", "#676D70")

theme_cfs <- function () {

  theme_minimal(base_size=12, base_family="Avenir") %+replace%
    theme(
      panel.background  = element_blank(),
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA),
      panel.border = element_rect(fill = NA,
                                  colour = "grey20")
    )
}


ggplot(iris) +
  geom_point(aes(x = Sepal.Width, y = Sepal.Length, color = Species), size = 4) +
  theme_cfs() +
  scale_color_manual(values = cfspal[1:3])


ggsave("~/Desktop/cfsplot.png", height = 4, width = 6, units = "in")
