# Daha tutarlı FPS alma rehberi

[Rehberin kaynağı olan video](https://youtu.be/5ZCOHIsyhRg)

Bazı benchmark'lar göstermektedir ki Linux'ta kare sınırlandırma (FPS cap) uygulanan oyunlar oldukça tutarlı FPS değerleri vermektedir. Bu da triple buffering mekanizmasının devreye girmesi sebebiyle %1 low FPS değerini yukarı çektiği için oynanan oyunda dropları azaltıp çok daha akıcı hissetmesini sağlamaktadır.

Kullandığınız ekranın Hz değeri size gösterebilecek maksimum kare sayısını da ifade etmektedir. Bu sebeple bu Hz değerinden yüksek karelere ulaşmanın pratikte bir karşılığı yoktur. Monitörünüz 100 Hz ise 100 fps ile sınırlandırmak hem ekran kartının daha serin çalışmasını hem de daha tutarlı kareler üretmesini sağlayacaktır. Yine de 120 Hz üzerinde hissedilir bir fark oluşmadığı için maksimum 120 fps ile sınırlandırmak isteyebilirsiniz.

FPS kilidini proton ile çalıştırılan oyunlarda aktifleştirmek için [Goverlay](https://flathub.org/tr/apps/io.github.benjamimgois.goverlay) veya [Mangojuice](https://flathub.org/tr/apps/io.github.radiolamp.mangojuice) uygulamaları kullanılabilir. Bu uygulamalar da sistemde `mangohud` paketinin kurulu olmasını gerektirir.

- **Mangojuice** uygulamasını yükleyip *Performance* sekmesinden *Limiters FPS* ayarına gelin.
- *late* seçeneği aktif ise *early* seçeneğine geçin.
- Yanındaki 0, 0, 0 yazan yerlere de istediğiniz FPS limiti değerlerini yazın. Örneğin varsayılan 60 fps limiti koyacaksanız 60, 120, 0 şeklinde yaparsanız limitler arasında gezerken sırayla 60, 120 ve sınırsız FPS şeklinde oyun esnasında limitleri değiştirip değerleri test edebilirsiniz.
- Değiştirmek için kısayol *Shift L+F1*

- **Goverlay** uygulamasından ise MangoHud sekmesinden *Performance* sekmesine gelip FPS Limit ayarından örneğin 60,120,0 şeklinde belirtebilirsiniz. Kısayolları aynıdır.

Bu şekilde oyunlarınızın kare tutarlılığını test edebilirsiniz. Karelerin tutarlı üretilmesi için oyunun üretebildiği maksimum kare sayısından daha az bir değerle sınırlandırmanız gerektiğini unutmayın. Örneğin en fazla 70 fps'e çıkıyorsa %1 low değeri 40'lara düştüğü dalgalı bir grafik varsa 60 fps ile limitlemek daha %1 low değerini iyileştireceği için oyun daha stabil ve akıcı hale gelecektir.
