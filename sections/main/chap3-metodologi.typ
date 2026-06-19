= METODOLOGI

== Tahapan Penelitian dan Pengembangan

Metodologi yang digunakan dalam pengembangan Sistem Pelaporan dan Penanganan Sampah Liar ini adalah #strong[Software Development Life Cycle (SDLC) dengan pendekatan Agile (Scrum)]. Pendekatan Agile dipilih karena memungkinkan iterasi cepat berdasarkan *feedback* langsung dari pengguna (warga dan petugas DLH), yang sangat krusial untuk produk berbasis adopsi massal.

Berikut tahapan detailnya:

=== Proses Awal (Discovery & Requirement Gathering)

Melakukan wawancara mendalam dan Focus Group Discussion (FGD) dengan Dinas Lingkungan Hidup (DLH), lurah, dan tokoh masyarakat. Studi kelayakan teknis terhadap infrastruktur jaringan di wilayah sasaran dan regulasi data pemerintah.

*Output:* User Stories, Prioritas Fitur (MVP vs Nice-to-have).

=== Pembuatan Prototype Awal (Low-Fidelity & High-Fidelity)

Merancang alur pengguna (*user flow*) dan antarmuka (UI/UX) menggunakan tools seperti Figma. Fokus pada *friction reduction*: meminimalkan jumlah klik untuk *submit* laporan (idealnya < 3 langkah).

*Output:* Wireframe dan Prototype Klikable.

=== Uji Coba Prototype (Usability Testing)

Melibatkan 15-20 orang warga dari berbagai demografi (usia, literasi digital) untuk menguji *prototype*. Mengukur *Task Success Rate* dan *Time-on-task*.

*Output:* Laporan rekomendasi perbaikan UI/UX.

=== Revisi dan Penyempurnaan (Iterasi Pengembangan)

Tim *development* membangun sistem berbasis hasil uji coba (backend API, frontend mobile, database). Dilakukan *sprint review* setiap 2 minggu dengan *stakeholder*.

=== Pembuatan Sistem Lebih Detail (Full Development)

Integrasi fitur lengkap: Dashboard Analytics, Modul Gamifikasi (backend logic poin), Notifikasi Push (Firebase/FCM), dan Gateway Payment (untuk *redemption* voucher). Pengujian keamanan (*penetration testing*) untuk melindungi data pribadi warga.

=== Uji Coba Sistem yang Diperbarui (Beta Testing / Pilot Project)

Meluncurkan sistem secara terbatas di 2 kecamatan prioritas selama 1 bulan. Menggunakan data *real* untuk *stress testing* server dan validasi alur kerja petugas lapangan.

=== Penyelenggaraan dan Implementasi Sistem (Go-Live & Scaling)

Peluncuran resmi (*Soft Launch* dan *Hard Launch*). Pelatihan intensif kepada seluruh staf DLH dan sosialisasi masif ke masyarakat melalui Kader Lingkungan dan sekolah. Monitoring berkelanjutan dan *maintenance* pasca-*go-live*.
