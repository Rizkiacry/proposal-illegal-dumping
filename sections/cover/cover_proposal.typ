#import "../../config.typ": *

#page(
  numbering: none,
  header: none,
  footer: none,
)[
  #align(horizon + center)[
    #text(1.2em, weight: "bold")[#upper[
      #context {
        let current_page = counter(page).get().first()
        if current_page == 1 {
          report_type
        } else {
          report_type
        }
      }
    ]]
    \
    #text(1.2em, weight: "bold")[#upper[#title_block]]
    \
    \
    \
    #image("../../media/logo_itpln.png", width: 2in)
    \
    \
    \
    #align(left)[
      #pad(left: 3cm)[
        #grid(
          columns: (auto, auto, auto, auto),
          row-gutter: 1em,
          column-gutter: 1em,
          [ANGGOTA], [:], [#author_names.at(0)], [#author_ids.at(0)],
          ..for i in range(1, author_names.len()) {
            ([], [:], author_names.at(i), author_ids.at(i))
          },
          [DOSEN], [:], [#advisor_name], [],
        )
      ]
    ]
    #text(weight: "bold")[
      #upper[
        \
        \
        \
        \
        #faculty_of_study\
        #program_of_study\
        #campus_name \
        #year
      ]
    ]
  ]
]
