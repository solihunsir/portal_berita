<x-layout>
    <x-slot:title>{{ $title }}</x-slot:title>

    <!-- Hero Section -->
    <section class="hero-section bg-gradient-to-r from-blue-600 to-indigo-800 text-white py-20">
        <div class="container mx-auto px-8">
            <div class="grid md:grid-cols-2 gap-8 items-center">
                <div class="hero-content">
                    <h1 class="text-4xl md:text-5xl font-bold mb-4">Selamat Datang di Website Kami</h1>
                    <p class="text-xl mb-8">Solusi terbaik untuk kebutuhan digital Anda dengan layanan profesional dan
                        berkualitas tinggi.</p>
                    <div class="flex flex-wrap gap-4">
                        <a href="/about"
                            class="bg-white text-indigo-700 hover:bg-indigo-50 font-semibold py-3 px-6 rounded-lg transition duration-300">Tentang
                            Kami</a>
                        <a href="/kontak"
                            class="bg-transparent border-2 border-white hover:bg-white hover:text-indigo-700 text-white font-semibold py-3 px-6 rounded-lg transition duration-300">Hubungi
                            Kami</a>
                    </div>
                </div>
                <div class="hero-image hidden md:block">
                    <img src="images/winni.png" alt="Hero Image" class="w-full h-auto">
                </div>
            </div>
        </div>
    </section>



    <section class="testimonials-section py-16 bg-indigo-50">
        <div class="container mx-auto px-4">
            <div class="text-center mb-12">
                <h2 class="text-3xl font-bold text-gray-800 mb-4">Apa Kata Klien Kami</h2>
                <p class="text-gray-600 max-w-2xl mx-auto">Lihat pengalaman dan testimoni dari klien yang telah bekerja
                    sama dengan kami</p>
            </div>
            <div class="grid md:grid-cols-3 gap-8">
                <div class="testimonial-card bg-white p-6 rounded-lg shadow-md">

                    <p class="text-gray-600 mb-4">"Sangat puas dengan layanan yang diberikan. Website kami sekarang
                        tampil lebih profesional dan modern. Tim support juga sangat responsif."</p>
                    <div class="testimonial-author flex items-center">

                        <div>
                            <h4 class="font-semibold text-gray-800">Budi Santoso</h4>
                            <p class="text-sm text-gray-500">Bg...</p>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card bg-white p-6 rounded-lg shadow-md">

                    <p class="text-gray-600 mb-4">"Proses pengembangan aplikasi mobile berjalan lancar dan tepat waktu.
                        Fitur-fitur yang diimplementasikan sesuai dengan kebutuhan bisnis kami."</p>
                    <div class="testimonial-author flex items-center">

                        <div>
                            <h4 class="font-semibold text-gray-800">Dewi Anggraini</h4>
                            <p class="text-sm text-gray-500">Bg...</p>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card bg-white p-6 rounded-lg shadow-md">

                    <p class="text-gray-600 mb-4">"Strategi digital marketing yang diberikan sangat efektif. Traffic
                        website meningkat dan konversi penjualan naik signifikan dalam waktu singkat."</p>
                    <div class="testimonial-author flex items-center">

                        <div>
                            <h4 class="font-semibold text-gray-800">Rudi Hermawan</h4>
                            <p class="text-sm text-gray-500">Bg...</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section py-16 bg-indigo-700 text-white">
        <div class="container mx-auto px-4 text-center">
            <h2 class="text-3xl font-bold mb-4">Siap Untuk Memulai Proyek Anda?</h2>
            <p class="text-xl mb-8 max-w-2xl mx-auto">Hubungi kami sekarang untuk konsultasi gratis dan dapatkan
                penawaran terbaik untuk kebutuhan digital Anda</p>
            <a href="/kontak"
                class="bg-white text-indigo-700 hover:bg-indigo-50 font-semibold py-3 px-8 rounded-lg text-lg transition duration-300 inline-block">Hubungi
                Kami</a>
        </div>
    </section>
</x-layout>
