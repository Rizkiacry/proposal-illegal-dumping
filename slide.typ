#import "config.typ": *

#set page(
  paper: "presentation-4-3",
  margin: (top: 1.5cm, bottom: 1cm, left: 2cm, right: 2cm),
  fill: rgb(253, 240, 245),
)

#let fit-width(body, width) = context {
  let ref = root_font_size
  set text(size: ref)
  let m = measure(body)
  let ratio = width / m.width
  set text(size: ref * ratio)
  body
}

#let cell-fit(body, width) = context {
  let ref = root_font_size
  set text(size: ref)
  let m = measure(body)
  let ratio = calc.max(width / m.width, 1.0)
  set text(size: ref * ratio)
  body
}

#let slide(body) = {
  pagebreak()
  set text(font: "Porca", size: root_font_size)
  set par(justify: false, first-line-indent: 0pt, leading: 0.65em)
  body
}

#let cwidth = 25.4cm - 4cm
#let twidth = cwidth - 1.5cm

#let section-slide(title) = {
  set page(fill: rgb(180, 100, 130))
  align(horizon + center, fit-width(text(fill: white, font: "Porca", weight: "bold", title), cwidth))
}

#let stitle(t) = {
  fit-width(text(font: "Porca", weight: "bold", fill: rgb(180, 100, 130), t), cwidth)
  v(0.3cm)
}

#let bul(b, c) = context {
  let full = text(font: "Porca", fill: rgb(180,100,130), b + "  " + c)
  fit-width(full, twidth) + linebreak() + v(0.3em)
}

#let image-slide(path, caption) = {
  pagebreak()
  set align(center + horizon)
  block(width: 100%, height: 19.05cm - 2.5cm, image(path, width: 100%, height: 19.05cm - 2.5cm, fit: "contain"))
}

// ===== SLIDE DECK =====

#slide[
  #align(center + horizon)[
    #set text(size: 1.3em)
    #fit-width(text(weight: "bold", fill: rgb(180, 100, 130), title_txt), cwidth)
    #v(1cm)
    #set text(size: 0.8em)
    #text(weight: "medium", fill: black)[Sidang Proposal Skripsi S1]\
    #v(0.5cm)
    #text(weight: "medium", fill: rgb(180, 100, 130))[Oleh Tim Mahasiswa Teknik Informatika]\
    #v(0.5cm)
    #text(size: 0.7em, fill: gray)[Dosen Pembimbing: #advisor_name]
  ]
]

#slide[
  #stitle[Perencanaan Presentasi (Prinsip SPAM)]
  #bul("Situation", "Sidang Proposal Proyek Akhir ITPLN, durasi presentasi 15 menit.")
  #bul("Purpose", "Memaparkan rancangan sistem pelaporan & penanganan sampah liar Kota.")
  #bul("Audience", "Dewan Penguji Akademik dan Dosen Pembimbing Teknik Informatika.")
  #bul("Method", "Penyampaian terstruktur berbasis data, visualisasi mockup, dan kerangka logis.")
]

#section-slide[Bab I: Pendahuluan]

#slide[
  #stitle[Latar Belakang]
  #bul(">", "Jakarta: 6.270 ton sampah/hari — 21% hilang dari pengelolaan formal")
  #bul(">", "1.316 ton/hari menumpuk ilegal di bantaran sungai & lahan kosong")
  #bul(">", "Tragedi Leuwigajah 2005: 140 jiwa melayang akibat longsor sampah")
  #bul(">", "55% warga bingung lokasi TPS; pelaporan warga masih manual")
  #bul(">", "Solusi: Sistem LBS, gamifikasi, dan dashboard analitik GIS")
]

#image-slide("media/fig1_infografis_round.png", "Infografis statistik sampah Jakarta")

#image-slide("media/fig2_sampah_liar_round.png", "Foto udara tumpukan sampah liar di Cilincing, Jakarta Utara")

#slide[
  #stitle[Rumusan Masalah]
  #bul("1.", "Bagaimana merancang sistem pelaporan mobile berbasis LBS yang cepat & akurat?")
  #bul("2.", "Bagaimana membangun sistem pelacakan status penanganan real-time yang transparan?")
  #bul("3.", "Bagaimana memetakan & memprioritaskan titik sampah liar dengan dashboard GIS?")
]

#slide[
  #stitle[Ruang Lingkup Proyek (Batasan Masalah)]
  #bul("1.", "Wilayah uji coba dibatasi pada 2 kecamatan prioritas dengan aduan tertinggi di Jakarta.")
  #bul("2.", "Fokus pada pelaporan, verifikasi, visualisasi data, alur kerja (workflow) pembersihan.")
  #bul("3.", "TIDAK mencakup optimasi rute logistik armada fisik pengangkutan sampah dinas.")
  #bul("4.", "Sampah dibatasi pada sampah domestik; tidak mencakup limbah industri B3 skala besar.")
]

#slide[
  #stitle[Tujuan Proyek]
  #bul("1.", "Merancang aplikasi mobile pelaporan sampah liar dengan deteksi lokasi GPS otomatis.")
  #bul("2.", "Membangun pelacakan status laporan real-time dengan verifikasi foto after-cleaning.")
  #bul("3.", "Mengembangkan dashboard GIS untuk pemetaan spasial sebaran sampah liar kota.")
  #bul("4.", "Menerapkan fitur gamifikasi berupa poin reward untuk retensi keterlibatan warga.")
]

#slide[
  #stitle[Manfaat Proyek]
  #bul("Warga", "Meningkatkan transparansi penanganan aduan, insentif reward poin, edukasi TPS.")
  #bul("Pemkot", "Otomatisasi workflow dinas, mapping preventif titik dumping, respon publik cepat.")
  #bul("Kota", "Mengurangi pencemaran lingkungan (tanah & air), mendukung Smart & Green City.")
]

#slide[
  #stitle[Hubungan Logis Bab I]
  #align(center)[
    #table(
      columns: (1fr, 1fr, 1fr),
      [Rumusan Masalah\ (Bagaimana?)], [Batasan Masalah\ (Persempit Cakupan)], [Tujuan Proyek\ (Untuk Apa?)],
      [Pelaporan cepat & akurat mobile], [2 Kecamatan pilot & sampah domestik], [Rancang mobile app + LBS],
      [Tracking transparan real-time], [Konfirmasi bukti foto after-cleaning], [Bangun tracking & notifikasi],
      [Pemetaan spasial & prioritas GIS], [TIDAK optimasi rute armada logistik], [Mengembangkan dashboard GIS]
    )
  ]
]

#slide[
  #stitle[Sistematika Penulisan Proposal]
  #bul("BAB I", "Pendahuluan: Latar belakang, Rumusan, Tujuan, Manfaat, Ruang Lingkup, Sistematika.")
  #bul("BAB II", "Tinjauan Pustaka: Landasan Teori (LBS, Gamifikasi, GIS, Agile) & Benchmarking platform.")
  #bul("BAB III", "Metodologi Proyek: SDLC Agile Scrum, Alat & Bahan, Teknik Data, Jadwal, & Anggaran.")
]

#section-slide[Bab II: Tinjauan Pustaka]

#slide[
  #stitle[Landasan Teori]
  #bul("LBS", "Menangkap lokasi presisi koordinat GPS secara otomatis saat warga memotret.")
  #bul("Gamifikasi", "Mengkonversi laporan valid warga menjadi poin penukaran voucher guna retensi adopsi.")
  #bul("GIS", "Visualisasi peta interaktif heat map sebaran sampah untuk analisis dinas kebersihan.")
  #bul("Agile Scrum", "Proses pengembangan adaptif dengan siklus Sprint 2 minggu untuk integrasi umpan balik.")
]

#slide[
  #stitle[Penelitian Terkait (Benchmarking)]
  #bul("FixMyStreet", "Peta pelaporan global yang transparan; kelemahan: tidak ada gamifikasi & workflow sampah.")
  #bul("Silampah", "Aplikasi pemkot resmi Semarang; kelemahan: adopsi rendah karena minim insentif warga.")
  #bul("Simpelsi", "Rancangan mobile & dashboard admin; kelemahan: belum ada interaksi real-time pelapor.")
  #bul("LaporSampah.id", "Inovasi gamifikasi point-reward; menjadi benchmark modul retensi sistem ini.")
]

#image-slide("media/fig3_simpelsi.jpg", "Sistem Simpelsi — mobile reporting + dashboard admin")

#image-slide("media/fig4_gamifikasi.png", "LaporSampah.id — gamifikasi & reward points")

#slide[
  #stitle[Kerangka Teoritis (Closed-Loop System)]
  #bul("1. Input", "Citizen Sensor: Warga lapor tumpukan sampah via mobile + LBS lokasi otomatis.")
  #bul("2. Proses", "Workflow Dinas: Admin verifikasi di GIS, tugaskan petugas, bersihkan lokasi.")
  #bul("3. Output", "Validation & Reward: Notifikasi after-cleaning ke warga + pemberian poin reward.")
  #bul("4. Outcome", "Data-Driven Policy: Analitik heat map daerah rawan untuk pencegahan preventif.")
]

#section-slide[Bab III: Metodologi Proyek]

#slide[
  #stitle[Spesifikasi Alat dan Bahan]
  #bul("Hardware", "Laptop specs dev (RAM 16GB, SSD 512GB) & Smartphone Android uji coba GPS.")
  #bul("Software", "React Native (Mobile), ReactJS (Web Admin), NodeJS Express, PostgreSQL PostGIS.")
  #bul("API Integration", "Google Maps API (Spasial) & Firebase Cloud Messaging (Notifikasi).")
]

#slide[
  #stitle[Prosedur Pelaksanaan (Scrum)]
  #bul("Sprint 1-3", "Discovery & Prototyping: FGD, User stories, dan kawat desain Figma (Minggu 1-6).")
  #bul("Sprint 4-8", "Core Development: Koding API backend, mobile app, dan GIS web admin (Minggu 7-16).")
  #bul("Sprint 9-11", "Testing & Training: Pengujian UT, pilot project 2 kecamatan, training DLH (Minggu 17-22).")
  #bul("Sprint 12", "Go-Live: Deploy server produksi, rilis app store, sosialisasi publik (Minggu 23-24).")
]

#slide[
  #stitle[Teknik Pengumpulan Data]
  #bul("Wawancara", "Wawancara terstruktur dengan pihak DLH kota untuk analisis regulasi & workflow lapangan.")
  #bul("FGD", "Diskusi kelompok terarah dengan warga kelurahan pilot untuk menggali isu & ekspektasi.")
  #bul("UT (Usability)", "Usability testing purwarupa sistem dengan warga untuk mengukur Task Success Rate.")
]

#slide[
  #stitle[Rencana Anggaran Biaya (RAB)]
  #bul("Metode Estimasi", "COCOMO II (Organic Mode, EAF 1.15 untuk penyesuaian database GIS).")
  #bul("1. SDM", "Rp 540.000.000 (45 Person-Months @ Rp 12.000.000/PM)")
  #bul("2. Operasional", "Rp 111.000.000 (Server Cloud AWS/GCP, sosialisasi, promosi)")
  #bul("3. Insentif", "Rp 100.000.000 (Dana penukaran reward voucher UMKM warga)")
  #bul("Total RAB", "Rp 751.000.000 (Investasi komprehensif 6 bulan)")
]

#slide[
  #stitle[Terima Kasih]
  #align(center + horizon)[
    #set text(size: 1.2em, weight: "bold", fill: rgb(180, 100, 130))
    Sesi Tanya Jawab (Q&A)\
    #v(0.5cm)
    #set text(size: 0.8em, weight: "medium", fill: black)
    #campus_name \
    #program_of_study
  ]
]
