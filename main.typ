#import "./template.typ" : report
#import "./bxbibwrite.typ": *

#set table(inset: 10pt)

#show: report.with(
  title: "T2 真空蒸着法による薄膜の作製と膜厚の測定", 
  senkou: "k",
  group: "39",
  student-id: "k23099",
  author: "花田歩夢",
  date: "11/8",
  paper-size: "a4", 
)
= 考察
考察をかく#super[[@1]]\

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

#bibliography-list(
  title: "3. 参考文献", // 既定値は"Bibliography"
)[
#bib-item(<1>)[U研⾼エネルギー天⽂学グループ 真空とは(https://www.u.phys.nagoya-u.ac.jp/r_e/r_e_s.html) 閲覧日 2024/11/10]
#bib-item(<2>)[尾池⼯業株式会社 真空蒸着とは (https://www.oike-kogyo.co.jp/research/column/vacuum_dep/)
閲覧⽇ 2024/11/10]
]