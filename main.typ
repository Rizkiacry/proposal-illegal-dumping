#import "config.typ": *

#set document(
  title: [#report_type #author_names.at(1)],
  author: author_names.at(1),
)
#set page(
  margin: page_margin,
  paper: page_layout,
  ..if report_type == "Laporan Proyek Akhir" {
  } else {
    ()
  }
)
#set text(
  font: root_font,
  size: root_font_size,
  lang: lang,
  hyphenate: hyphenate,
  top-edge: "ascender",
  bottom-edge: "descender",
)
#set par(
  justify: true,
  leading: 1em,
  first-line-indent: (
    amount: par_first_line_indent,
    all: par_first_line_indent_all
  )
)

// === Cover
#if report_type == "Laporan Proyek Akhir" {
  include "sections/cover/cover_report-1.typ"
} else {
  include "sections/cover/cover_proposal.typ"
}

// === Preface
#set figure.caption(separator: " ")
#set figure(numbering: it => {
  [#counter(heading).get().at(0).#it]
})
#show figure.where(kind: "gambar"): set figure(supplement: "Gambar")
#show figure.where(kind: "tabel"): set figure(supplement: "Tabel")
#set table.header(repeat: true)
#show heading.where(
  level: 1
): it => [
  #pagebreak()
  #set align(center)
  #set text(12pt, weight: "bold")
  #pad(bottom: 18pt)[
    #upper([
      #it.body
    ])
  ]
]
#show figure: set block(breakable: true)
#show figure.where(
  kind: "tabel"
): set figure.caption(position: top)

#set page(numbering: "i")

#set math.equation(numbering: "(1)", supplement: "Persamaan")

#include "sections/preface/main.typ"

// === Main Content
#set page(numbering: "1")
#set heading(numbering: "1.")
#show heading.where(
  level: 1
): it => [
  #if true or report_type == "Laporan Proyek Akhir" {
    pagebreak()
    counter(figure.where(kind: "tabel")).update(0)
    counter(figure.where(kind: "gambar")).update(0)
    set align(center)
    set text(heading_1_font_size, weight: heading_1_font_weight)
    let selector = selector(heading).before(here())
    let level = counter(selector)
    pad(bottom: heading_1_bottom_padding)[
      #upper([
        BAB #level.display("I") \ #it.body
      ])
    ]
  } else {
    pagebreak()
    counter(figure.where(kind: "tabel")).update(0)
    counter(figure.where(kind: "gambar")).update(0)
    set text(heading_1_font_size, weight: heading_1_font_weight)
    let selector = selector(heading).before(here())
    let level = counter(selector)
    pad(bottom: heading_1_bottom_padding)[
      #upper([
        #grid(
          columns: (par_first_line_indent, auto),
          [ #level.display("I"). ],
          [ #it.body ]
        )
      ])
    ]
  }
]
#show: rest => {
  for i in (2, 3, 4) {
    rest = {
      show heading.where(level: i): it => [
        #set text(heading_n_font_size, weight: heading_n_font_weight)
        #let selector = selector(heading).before(here())
        #let level = counter(selector)
        #pad(bottom: heading_n_bottom_padding)[
          #grid(
            columns: (par_first_line_indent, auto),
            [ #level.display() ],
            [ #it.body ]
          )
        ]
      ]
      rest
    }
  }
  rest
}

#include "sections/main/chap1-pendahuluan.typ"
#include "sections/main/chap2-tinjauan-pustaka.typ"
#include "sections/main/chap3-metodologi.typ"
#include "sections/main/chap4-biaya-jadwal.typ"

#set heading(numbering: none)
#show heading.where(
  level: 1
): it => [
  #pagebreak()
  #set align(center)
  #set text(heading_1_font_size, weight: heading_1_font_weight)
  #pad(bottom: heading_1_bottom_padding)[
    #upper([
      #it.body
    ])
  ]
]

= Kesimpulan dan Saran

Proposal *Sistem Pelaporan dan Penanganan Sampah Liar (Illegal Dumping) Kota* ini menawarkan solusi teknologi komprehensif untuk memecahkan kebuntuan manajemen sampah perkotaan. Dengan menggabungkan kemudahan akses mobile, transparansi data real-time, insentif gamifikasi, dan analitik dashboard yang powerful, sistem ini berpotensi mengubah paradigma pengelolaan sampah dari yang _reaktif_ menjadi _proaktif dan partisipatif_.

Estimasi anggaran sebesar *Rp 751.000.000* dengan timeline *6 bulan* adalah investasi yang rasional jika dibandingkan dengan biaya sosial dan kesehatan yang ditimbulkan oleh sampah liar. Implementasi sistem ini tidak hanya akan membersihkan kota secara fisik, tetapi juga membangun kepercayaan antara pemerintah dan warga.

= Daftar Pustaka

#bibliography(
  "citations/references.bib",
  title: none,
  full: false,
  style: "citations/apa.csl",
)
