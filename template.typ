#let sans = "Hiragino Mincho ProN"
#let p = "Hiragino Kaku Gothic ProN"

#let report(
  t: "Tx",
  title: "タイトル",
  senkou: "専攻",
  group: "班",
  student-id: "学籍番号",
  author: "氏名",
  date: "実験日",
  paper-size: "a4",
  body,
) = {
  set document(title: title,author: author)
  set page(
    paper: paper-size,
    margin: (bottom: 1.75cm, top: 2.25cm),
    
  )
  set text(
    font: p,
    size: 12pt, 
    lang: "ja"
  )
  
  


  set page(
    footer: [
      // #align(center)[#counter(page).display("1")]
      #align(center)[ #counter(page).display("1") ]
    ]
  )

  v(10pt)
  align(center)[
    #text(20pt, weight: 500, font: sans)[#t#h(10pt)#title]
  ]
  v(10pt)
  align(right)[
    #text(15pt,weight: 500, font: sans)[
      専攻#senkou#h(10pt)班番号#group#h(10pt)学籍番号#h(5pt)#student-id#h(10pt)氏名#h(5pt)#author#h(10pt)実験日 #date 
    ]
  ]
  v(10pt)

  set par(
    leading: 0.78em,
    first-line-indent: 14pt,
    justify: true
  )
  // show par: set block(spacing: 1em)
  set par(spacing: 1em)


  set heading(numbering: (..nums) => {
    nums.pos().map(str).join(".") + " "
  })
  show heading.where(level: 1): it => {
    counter(math.equation).update(0)
    set text(weight: "bold", size: 16pt, font: sans)
    let pre_chapt = text()[
        #numbering("1", ..counter(heading).at(it.location())).
    ]
    text()[
      #v(20pt)
      #pre_chapt#it.body \
      #v(10pt)
    ]
  }
  show heading.where(level: 2): it => {
    set text(weight: "bold", size: 14pt, font: sans)
    let pre_chapt = text()[
      #numbering(it.numbering, ..counter(heading).at(it.location()))
    ]
    text()[
      #v(20pt)
      #pre_chapt#it.body \
      #v(10pt)
    ]
  }
  show heading: it => {
    set par(first-line-indent: 0pt)
    it
  }

  counter(page).update(1)

  body
}
