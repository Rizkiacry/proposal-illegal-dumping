= METODOLOGI PROYEK

== Jenis Proyek

Metodologi yang digunakan dalam perancangan dan pengembangan Sistem Pelaporan dan Penanganan Sampah Liar ini adalah #strong[Software Development Life Cycle (SDLC) dengan pendekatan Agile Scrum]. Pendekatan ini dipilih karena memberikan fleksibilitas tinggi bagi tim pengembang untuk melakukan penyesuaian fungsionalitas produk berdasarkan umpan balik berkala dari warga dan petugas lapangan secara iteratif.

== Alat dan Bahan

Proses pengembangan sistem ini membutuhkan dukungan beberapa spesifikasi perangkat keras dan perangkat lunak sebagai berikut:

1. #strong[Perangkat Keras (Hardware)]:
   - Laptop spesifikasi pengembangan (Processor Core i7, RAM 16GB, SSD 512GB) untuk server lokal dan *coding environment*.
   - Smartphone Android dengan sensor GPS operasional untuk pengujian lapangan aplikasi mobile.
2. #strong[Perangkat Lunak (Software)]:
   - *Operating System*: macOS / Linux untuk server dev.
   - *Frontend Development*: React Native (untuk aplikasi mobile lintas platform) dan ReactJS (untuk dashboard admin).
   - *Backend & Database*: NodeJS (Express) dan PostgreSQL dengan ekstensi PostGIS untuk penyimpanan data spasial geografis.
   - *Mapping API & Cloud*: Google Maps API (atau Mapbox API) untuk visualisasi spasial, dan Firebase Cloud Messaging (FCM) untuk notifikasi push.
   - *Design Tools*: Figma untuk wireframe dan *high-fidelity prototyping*.

== Prosedur Pelaksanaan

Prosedur pelaksanaan proyek dibagi menjadi beberapa tahapan Scrum yang teratur sepanjang 6 bulan:

1. #strong[Discovery & Requirement Gathering]: Tahap awal untuk mendefinisikan kebutuhan sistem melalui wawancara dengan pemangku kepentingan dan pembuatan *user stories*.
2. #strong[Prototyping (Low-Fi & High-Fi)]: Pembuatan wireframe kasar dan desain UI/UX interaktif menggunakan Figma untuk mendesain alur pelaporan warga yang minim hambatan.
3. #strong[Usability Testing]: Melakukan pengujian awal purwarupa figma kepada 15-20 orang calon pengguna guna memvalidasi aspek kemudahan penggunaan (*usability*).
4. #strong[Iterasi Pengembangan (Sprint)]: Pembangunan kode backend API, database spasial, dan aplikasi frontend secara bertahap dalam siklus 2 mingguan.
5. #strong[Beta Testing & Validasi]: Uji coba peluncuran terbatas sistem di 2 kecamatan prioritas untuk memvalidasi performa server dan alur penanganan di lapangan.
6. #strong[Go-Live & Sosialisasi]: Peluncuran resmi sistem ke Google Play Store / App Store, sosialisasi ke warga, dan penyerahan dashboard monitoring ke dinas terkait.

== Teknik Pengumpulan Data

Untuk menunjang analisis kebutuhan dan validasi sistem, digunakan beberapa teknik pengumpulan data berikut:
1. #strong[Wawancara Terstruktur]: Dilakukan dengan pihak Dinas Lingkungan Hidup untuk memahami alur penanganan sampah liar konvensional dan kendala yang dihadapi.
2. #strong[Focus Group Discussion (FGD)]: Dilakukan bersama perwakilan warga dan aparat kelurahan untuk memetakan kebiasaan pembuangan sampah dan ekspektasi mereka terhadap sistem baru.
3. #strong[Usability Testing (UT)]: Dilakukan secara langsung dengan memandu responden menjalankan skenario pelaporan pada aplikasi untuk mengukur metrik *Task Success Rate* dan tingkat kepuasan pengguna.

== Jadwal dan Rencana Anggaran Biaya (RAB)

=== Rencana Anggaran Biaya (RAB)
Estimasi anggaran biaya pengembangan dihitung menggunakan metode #strong[Constructive Cost Model (COCOMO II)] untuk proyek kelas *Organic Mode* (tim terpusat, kebutuhan sistem terdefinisi dengan baik). Penyesuaian usaha (*effort*) menggunakan faktor pengali EAF (~1.15) karena kompleksitas pengolahan data spasial geografis.

#figure(
  table(
    columns: (auto, auto, auto),
    [NO], [Jenis Pengeluaran], [Biaya (Rp)],
    [1], [Biaya Pengembangan (SDM 45 Person-Months × Rp12.000.000)], [Rp540.000.000],
    [2], [Biaya Operasional (Server Cloud AWS/GCP & Publikasi)], [Rp111.000.000],
    [3], [Anggaran Insentif Gamifikasi (Reward Voucher UMKM)], [Rp100.000.000],
    [], [#strong[Total Anggaran Biaya]], [#strong[Rp751.000.000]],
  ),
  caption: [Rencana anggaran biaya proyek],
  kind: "tabel",
)

=== Jadwal Kegiatan (Timeline 6 Bulan)
Pelaksanaan proyek ini direncanakan selesai dalam durasi 6 bulan (24 minggu) dengan rincian jadwal kegiatan sebagai berikut:

#figure(
  table(
    columns: (auto, auto, auto),
    [Minggu Ke-], [Fase Kegiatan], [Keterangan Keterlibatan Tim],
    [1 - 6], [Riset, Perancangan, dan Prototyping], [Fokus pada pengumpulan data, desain UI/UX, dan arsitektur database (5 Personel)],
    [7 - 16], [Pengembangan Inti Sistem (Backend, Mobile, Web)], [Implementasi kode, integrasi LBS, gamifikasi, dan dashboard GIS (7 Personel)],
    [17 - 22], [Pengujian Sistem, Uji Coba Beta, dan Pelatihan], [Usability testing lapangan di 2 kecamatan dan pelatihan dinas (5 Personel)],
    [23 - 24], [Peluncuran Resmi (Go-Live) dan Pemeliharaan], [Deploy server produksi, sosialisasi aplikasi, dan hypercare (4 Personel)],
  ),
  caption: [Jadwal pelaksanaan kegiatan proyek],
  kind: "tabel",
)
