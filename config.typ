#let author_names = (
  "Hafidz Nur Raihan",
  "Zain Akbar Rizkia",
  "Evan Ali Prayoga Pasaribu",
  "Zahid Zianur Rahman",
  "Mukhammad Naufal Dzaky Fauwaz",
)
#let author_ids = (
  "202231075",
  "202531091",
  "202531086",
  "202531090",
  "202531097",
)

#let report_type = "PROPOSAL"
#let title_txt = "Sistem Pelaporan dan Penanganan Sampah Liar (Illegal Dumping) Kota"
#let title_block = [
  Sistem Pelaporan dan Penanganan\
  Sampah Liar (Illegal Dumping) Kota
]

#let today = datetime.today()
#let date_of_release = [20 Juni 2026]
#let year = today.year()

#let advisor_name = "Ahmad Bachtiar Zen, S.Pd., M.Pd."

#let campus_name = "INSTITUT TEKNOLOGI PLN – JAKARTA"
#let faculty_of_study = "FAKULTAS TELEMATIKA ENERGI"
#let program_of_study = "Teknik Informatika"
#let degree = "Sarjana Terapan Komputer (S. Tr. Kom.)"

#let lang = "id"
#let hyphenate = true

#let root_font_size = 12pt
#let root_font = "Times New Roman"

#let heading_1_font_size = if report_type == "Laporan Proyek Akhir" {12pt} else {16pt}
#let heading_1_font_weight = "bold"
#let heading_1_bottom_padding = if report_type == "Laporan Proyek Akhir" {18pt} else {2.5em * .25}

#let heading_n_font_size = 11pt
#let heading_n_font_size = if report_type == "Laporan Proyek Akhir" {11pt} else {12pt}
#let heading_n_font_weight = "bold"
#let heading_n_bottom_padding = 8pt
#let heading_n_bottom_padding = if report_type == "Laporan Proyek Akhir" {8pt} else {1.5em * .25}

#let par_first_line_indent = 3 * root_font_size
#let par_first_line_indent_all = true

#let appendix_subheading_outline = false
#let virtual_appendix_page = state("virtual_appendix_page", 1)

#let page_layout = if report_type == "Laporan Proyek Akhir" {
  "a5"
} else {
  "a4"
}
#let page_margin = if report_type == "Laporan Proyek Akhir" {
  (
    top: 1.5cm,
    right: 1.5cm,
    left: 2cm,
    bottom: 1.5cm,
  )
} else {
  (
    top: 2cm,
    right: 2cm,
    left: 2cm,
    bottom: 2cm,
  )
}
