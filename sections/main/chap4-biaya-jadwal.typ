= BIAYA DAN JADWAL KEGIATAN

== Estimasi Biaya

Estimasi biaya disusun berdasarkan analisis *effort* menggunakan metode #strong[Constructive Cost Model (COCOMO II)] yang disesuaikan dengan kondisi pasar tenaga IT lokal Indonesia. Proyek ini diklasifikasikan sebagai *Organic Mode* (tim kecil, *requirement* relatif jelas, lingkungan *development* fleksibel).

=== Estimasi Effort & Kompleksitas

+ Keandalan sistem (RELY): Tinggi (target *uptime* 99.9%) #h(1em)-> #h(1em) *Cost driver 1.15*
+ Kompleksitas Database (CPLX): Sedang-Tinggi (spatial data/GIS) #h(1em)-> #h(1em) *Cost driver 1.10*
+ Kemampuan Analis (ACAP): Tinggi #h(1em)-> #h(1em) *Cost driver 0.90*
+ *Total Effort Adjustment Factor (EAF): ~1.15*

=== Estimasi Biaya Pengembangan

+ Total Person-Months: 45 PM
+ Rata-rata biaya per PM: Rp 12.000.000
+ #strong[Total Biaya Pengembangan = 45 PM × Rp 12.000.000 = Rp 540.000.000]

=== Rincian Biaya Tambahan (Operasional Tahun Pertama)

+ Server & Cloud Infrastructure (AWS/Google Cloud): Rp 36.000.000 per tahun.
+ Sosialisasi & Promosi App: Rp 75.000.000.
+ Budget Reward/Gamifikasi (voucher mitra UMKM): Rp 100.000.000.

=== Total Estimasi Biaya Proyek

#figure(
  table(
    columns: (auto, auto, auto),
    [NO], [Jenis Pengeluaran], [Biaya (Rp)],
    [1], [Biaya Pengembangan (SDM & Teknologi)], [Rp540.000.000],
    [2], [Biaya Operasional (Server & Promosi)], [Rp111.000.000],
    [3], [Budget Insentif (Gamifikasi)], [Rp100.000.000],
    [], [#strong[Total]], [#strong[Rp751.000.000]],
  ),
  caption: [Rekapitulasi estimasi biaya proyek],
  kind: "tabel",
)

== Jadwal Kegiatan

Proyek ini direncanakan berlangsung selama #strong[6 bulan (24 minggu)], dibagi menjadi 4 fase utama:

=== Fase 1: Riset, Perancangan, dan Prototyping (Minggu 1-6)

#strong[Durasi:] 6 Minggu

#strong[Aktivitas:] Penelitian kebutuhan mendalam, perancangan arsitektur sistem, desain UI/UX, dan *database schema*.

#strong[Personel:] 5 orang (1 PM, 1 Business Analyst, 1 UX/UI Designer, 1 System Architect, 1 Researcher).

=== Fase 2: Pengembangan Inti (Minggu 7-16)

#strong[Durasi:] 10 Minggu

#strong[Aktivitas:] Pengembangan backend API, frontend mobile dan dashboard admin, integrasi pemetaan, notifikasi, dan gamifikasi.

#strong[Personel:] 7 orang (2 Backend, 2 Frontend, 1 QA, 1 DevOps, 1 PM).

=== Fase 3: Pengujian, Validasi, dan Pelatihan (Minggu 17-22)

#strong[Durasi:] 6 Minggu

#strong[Aktivitas:] Pengujian fungsional, beban, dan keamanan. *Pilot project* di 2 kecamatan. Pelatihan staf DLH.

#strong[Personel:] 5 orang (1 PM, 2 Developers, 1 QA Lead, 1 Trainer).

=== Fase 4: Peluncuran dan Stabilisasi (Minggu 23-24)

#strong[Durasi:] 2 Minggu

#strong[Aktivitas:] *Deploy* produksi, peluncuran resmi, sosialisasi masif, *hypercare*.

#strong[Personel:] 4 orang (1 PM, 1 Support Engineer, 1 Marketing, 1 Backend on-call).
