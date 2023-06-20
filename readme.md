Nama Lengkap
Darriel Markerizal
22/494409/SV/20806

**Note
Untuk menggunakan website ini, perlu melakukan register terlebih dahulu

Deskripsi Website
Proyek akhir Praktikum Pemrograman Web yang mencakup pengembangan sebuah website e-commerce bernama CoreCommerce dinamis menggunakan PHP. Website ini dirancang untuk memberikan pengalaman berbelanja online yang nyaman dan mudah bagi pengguna.

Kebutuhan Klien
1.  Kebutuhan klien untuk proyek ini adalah memiliki platform e-commerce yang memungkinkan pengguna untuk melakukan pembelian produk secara online. Beberapa kebutuhan yang perlu dipenuhi oleh website ini meliputi:
2.  Pendaftaran dan Autentikasi Pengguna: Klien ingin pengguna dapat mendaftar dan membuat akun di website, serta dapat masuk ke dalam akun mereka menggunakan mekanisme otentikasi yang aman.
3.  Penjelajahan Produk: Pengguna harus dapat menjelajahi produk yang tersedia di toko secara mudah. Mereka harus dapat mencari produk berdasarkan kategori, melakukan pencarian berdasarkan kata kunci, dan melihat detail produk.
4.  Keranjang Belanja: Pengguna harus dapat menambahkan produk ke dalam keranjang belanja, melihat daftar produk yang ada di keranjang, mengubah jumlah produk, dan menghapus produk dari keranjang.
5.  Checkout dan Pembayaran: Website harus menyediakan proses checkout yang jelas dan mudah bagi pengguna. Pengguna harus dapat memilih metode pembayaran yang tersedia dan melakukan pembayaran dengan aman.
6.  Manajemen Pesanan: Klien membutuhkan fungsi manajemen pesanan yang memungkinkan mereka melihat pesanan yang telah dibuat, melacak status pengiriman, dan mengelola pesanan secara efisien.


Permasalahan yang Dicoba Di-cover dengan Website
Website ini mencoba menyelesaikan beberapa permasalahan umum yang terkait dengan pengembangan e-commerce, antara lain:
1.  Pengalaman Pengguna yang Mulus: Website ini dirancang untuk memberikan pengalaman pengguna yang nyaman dan mudah digunakan. Desain yang responsif, navigasi yang intuitif, dan tampilan yang menarik akan meningkatkan kepuasan pengguna.
2.  Fungsi Pencarian yang Efektif: Dengan adanya fungsi pencarian yang efektif, pengguna dapat dengan mudah menemukan produk yang mereka cari. Pencarian berdasarkan kategori, kata kunci, dan filter produk akan membantu pengguna menemukan produk yang diinginkan.
3.  Manajemen Pesanan yang Efisien: Sistem manajemen pesanan yang baik memungkinkan klien untuk mengelola pesanan dengan mudah. Informasi pesanan, status pengiriman, dan histori pesanan harus tersedia dengan jelas.

Desain rapi mengikuti kaidah atau prinsip desain
1.  Tata Letak yang Teratur: Website ini menggunakan tata letak yang teratur dan terstruktur dengan baik. Elemen-elemen seperti header, konten, sidebar, dan footer ditempatkan secara logis dan mudah diakses oleh pengguna. Ini membantu pengguna untuk dengan mudah menavigasi website dan menemukan informasi yang mereka cari.
2.  Warna yang Konsisten: Kami mengadopsi palet warna yang konsisten dan sesuai dengan identitas merek klien. Penggunaan warna yang konsisten membantu menciptakan kesan visual yang harmonis dan profesional. Selain itu, kami juga mempertimbangkan kontras warna yang cukup agar konten mudah dibaca dan dipahami oleh pengguna.
3.  Tipografi yang Jelas: Kami memilih jenis huruf (font) yang mudah dibaca dan memastikan ukuran dan gaya huruf yang sesuai dengan hierarki informasi. Hal ini memungkinkan pengguna untuk dengan mudah membaca dan memahami teks yang disajikan di website.
4.  Penggunaan Ruang Kosong yang Efektif: Kami memberikan perhatian pada penggunaan ruang kosong (whitespace) dalam desain website. Ruang kosong yang tepat di antara elemen-elemen desain membantu menciptakan tampilan yang lega dan memudahkan pengguna dalam memahami struktur informasi.
5.  Konsistensi Visual: Kami menjaga konsistensi visual dalam seluruh halaman website, termasuk penggunaan gaya, ikon, dan elemen desain lainnya. Hal ini memberikan pengalaman yang kohesif bagi pengguna dan meningkatkan kesan profesional dari website.

Website Responsif
Website yang dibuat dalam proyek ini menjawab kebutuhan dasar dalam hal responsif dan dapat diakses melalui berbagai perangkat seperti mobile, tablet, dan laptop. Untuk mencapai responsivitas, Anda menggunakan framework Bootstrap dalam proyek ini. Berikut adalah contoh kode yang menampilkan penggunaan responsif dalam tata letak website:

```html
<?php require_once('header.php'); ?>

<!-- Kode lainnya -->

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                
                <!-- Kode lainnya -->

                <div class="cart">
                    <table class="table table-responsive table-hover table-bordered">
                        <!-- Konten tabel -->
                    </table> 
                </div>

                <!-- Kode lainnya -->

                <div class="billing-address">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="special"><?php echo LANG_VALUE_162; ?></h3>
                            <table class="table table-responsive table-bordered table-hover table-striped bill-address">
                                <!-- Konten alamat tagihan -->
                            </table>
                        </div>
                    </div>                    
                </div>

                <!-- Kode lainnya -->

                <div class="cart-buttons">
                    <ul>
                        <li><a href="cart.php" class="btn btn-primary"><?php echo LANG_VALUE_21; ?></a></li>
                    </ul>
                </div>

                <!-- Kode lainnya -->

                <div class="row">
                    <?php if ($checkout_access == 0): ?>
                        <!-- Pesan jika informasi pengiriman belum lengkap -->
                    <?php else: ?>
                        <!-- Formulir pembayaran -->
                    <?php endif; ?>
                </div>

                <!-- Kode lainnya -->

            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>
```

Dalam contoh kode di atas, Anda menggunakan kelas-kelas CSS dari Bootstrap seperti `col-md-12` untuk membuat tata letak responsif dalam grid 12 kolom. Anda juga menggunakan kelas-kelas seperti `table-responsive` untuk membuat tabel responsif yang dapat diakses dengan nyaman pada perangkat mobile. Selain itu, Anda menggunakan kelas-kelas lain dari Bootstrap seperti `btn`, `form-group`, dan `select2` untuk memperkaya tampilan dan fungsionalitas website.

Dengan menggunakan framework Bootstrap dan menerapkan kelas-kelas responsif yang disediakannya, website yang Anda buat dapat menyesuaikan tata letak dan tampilan dengan baik di berbagai perangkat, termasuk mobile, tablet, dan laptop.

Direct Feedback ke Pengguna
Website yang dibuat memiliki fitur direct feedback ke pengguna menggunakan JavaScript. Berikut adalah contoh kutipan kode yang menunjukkan responsif kode untuk memberikan feedback ke pengguna:

```php
<section class="home-newsletter">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="single">
                    <?php
                    if($error_message1 != '') {
                        echo "<script>alert('".$error_message1."')</script>";
                    }
                    if($success_message1 != '') {
                        echo "<script>alert('".$success_message1."')</script>";
                    }
                    ?>

                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <h2><?php echo LANG_VALUE_93; ?></h2>
                        <div class="input-group">
                            <input type="email" class="form-control" placeholder="<?php echo LANG_VALUE_95; ?>" name="email_subscribe">
                            <span class="input-group-btn">
                                <button class="btn btn-theme" type="submit" name="form_subscribe"><?php echo LANG_VALUE_92; ?></button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
```

Dalam contoh kode di atas, terdapat pengecekan kondisi menggunakan variabel `$error_message1` dan `$success_message1`. Jika `$error_message1` tidak kosong, maka akan ditampilkan pesan error kepada pengguna melalui JavaScript dengan menggunakan perintah `echo "<script>alert('".$error_message1."')</script>";`. Begitu pula jika `$success_message1` tidak kosong, maka akan ditampilkan pesan success kepada pengguna.

Dengan menggunakan kode ini, feedback langsung dapat diberikan kepada pengguna melalui pop-up alert menggunakan JavaScript. Hal ini membantu dalam memberikan informasi yang relevan kepada pengguna terkait keberhasilan atau kegagalan dari suatu tindakan yang dilakukan dalam website.

Konten dinamis dari database
Website yang dibuat dalam proyek ini menjawab requirement dasar Konten dinamis dari database. Berikut ini adalah kutipan kode yang menampilkan konten dinamis dari database:

```php
<tr>
    <td><?php echo $tip; ?></td>
    <td>
        <?php
        $statement1 = $pdo->prepare("SELECT * FROM order_table WHERE payment_id=?");
        $statement1->execute(array($row['payment_id']));
        $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result1 as $row1) {
            echo 'Product Name: '.$row1['product_name'];
            echo '<br>Size: '.$row1['size'];
            echo '<br>Color: '.$row1['color'];
            echo '<br>Quantity: '.$row1['quantity'];
            echo '<br>Unit Price: IDR'.$row1['unit_price'];
            echo '<br><br>';
        }
        ?>
    </td>
    <td><?php echo $row['payment_date']; ?></td>
    <td><?php echo 'IDR'.$row['paid_amount']; ?></td>
    <td><?php echo $row['payment_status']; ?></td>
    <td><?php echo $row['payment_method']; ?></td>
    <td><?php echo $row['payment_id']; ?></td>
</tr>
```

Kode di atas digunakan untuk menampilkan konten dinamis dalam bentuk tabel. Dalam contoh ini, terdapat pengambilan data dari tabel "order_table" berdasarkan "payment_id" yang diberikan. Setiap baris data dari tabel tersebut akan ditampilkan sebagai informasi produk yang terkait dengan pembayaran. Informasi yang ditampilkan mencakup nama produk, ukuran, warna, jumlah, harga satuan, tanggal pembayaran, jumlah yang dibayar, status pembayaran, metode pembayaran, dan ID pembayaran.

Kode tersebut menggambarkan bagaimana website dapat mengambil data dari database dan menampilkannya secara dinamis dalam halaman web.






