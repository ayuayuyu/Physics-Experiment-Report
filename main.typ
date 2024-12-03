#import "./template.typ" : report

#set table(inset: 10pt)

#show: report.with(
  t: "T2",
  title: "真空蒸着法による薄膜の作製と膜厚の測定", 
  senkou: "k",
  group: "39",
  student-id: "学籍番号",
  author: "名前",
  date: "11/8",
  paper-size: "a4", 
)
= 考察
考察をかく#super[@膨張率]\

= 感想


#show heading.where(level: 1): it => {
  set text(weight: "bold", size: 16pt, font: "Hiragino Mincho ProN")
  text()[
    #v(20pt)
    #it.body \
    #v(10pt)
  ]
}
#set par(first-line-indent: 0pt)
#bibliography(
  "refs.yml",
   title: "参考文献", 
   style: "refs.csl"
)
