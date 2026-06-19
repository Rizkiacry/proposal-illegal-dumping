#import "../../config.typ": *

#pagebreak()
#set page(numbering: none)
#set align(center)

#v(2em)

#text(heading_1_font_size, weight: "bold")[LEMBAR PERSETUJUAN PROPOSAL]

#v(1em)

#text(root_font_size)[
  Proposal yang berjudul:\
  #strong[#title_block]

  #v(1em)

  Diajukan sebagai salah satu syarat untuk melaksanakan\
  Tugas Akhir pada Program Studi #program_of_study

  #v(1em)

  Disetujui pada tanggal: #date_of_release

  #v(2em)

  #grid(
    columns: (auto, auto),
    [
      #align(center)[
        Mengetahui,\
        Ketua Program Studi #program_of_study
        #v(2.5em)
        \
        \
        #text(size: 0.8em)[(NIP. ...)]
      ]
    ],
    [
      #align(center)[
        Pembimbing,\
        #strong[#advisor_name]
        #v(2.5em)
        \
        \
        #text(size: 0.8em)[(NIDN. ...)]
      ]
    ],
  )

  #v(2em)
]
