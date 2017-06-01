
library(ggplot2)
library(Cairo)

CairoFonts(regular = 'HiraKakuProN-W3')
par(family='HiraKakuProN-W3')
# plot作成
gg <- ggplot(mtcars,aes(x=wt,y=mpg)) + geom_point()
gg <- gg + ggtitle("車の重さと燃費の関係")
gg <- gg + xlab("重さ") + ylab("燃費")
gg <- gg + theme(plot.title = element_text(face="bold"))

# PDF出力(A4横)
CairoPDF(paper="a4r",width=11.69,height=8.27)
theme_gray(base_family="HiraKakuProN-W3")
print(gg)
