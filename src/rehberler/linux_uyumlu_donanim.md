# Linux Uyumlu Donanım Seçim Rehberi

> **Yazar:** [Kayra](https://www.x.com/QMinun)

## Giriş ve Amaç

Statista verilerine göre, dünya genelindeki sunucuların yaklaşık %96'sı
Linux çekirdeği tabanlı işletim sistemleri üzerinde çalışmaktadır. Bu
durum, sunucu odaklı donanımların Linux ekosisteminde "tak-çalıştır"
mantığıyla sorunsuz çalıştığını gösterir. Ancak masaüstü ve son
kullanıcı donanımlarında durum her zaman bu kadar pürüzsüz
olmayabiliyor.

Amerikan hükümet raporlarına göre masaüstü Linux kullanımı %6
seviyelerine ulaşarak yükselişe geçmiş durumda. Bu rehber, büyüyen bu
ekosisteme dahil olmak isteyen kullanıcıların, donanım seçimi yaparken
karşılaşabilecekleri uyumluluk sorunlarını en aza indirmeyi
amaçlamaktadır.

Ayrıca Statcounter verilerine göre Türkiye'de MacOS kullanıcısından daha fazla Linux kullanıcısı vardır. Bu oran, Pardus'u dahil etmeseniz bile korunmaktadır.

!!! note

    Pardus, kullanıcı sayısını halk ile paylaşmaktadır

## 1. İşlemci (CPU) Seçimi

Genel kural olarak, modern işlemcilerin neredeyse tamamı Linux
dağıtımları ile uyumludur. Ancak kullanım senaryonuza göre dikkat
etmeniz gereken bazı nüanslar bulunmaktadır.

### Genel Bakış

- **Intel & AMD:**

    > Her iki üreticinin işlemcileri de Linux tarafında yüksek uyumlulukla çalışır. Standart bir ev veya ofis kullanıcısı için marka tercihi, işletim sistemi uyumluluğunu etkilemez.

- **Fiyat/Performans Önerisi:**

    > Türkiye pazarındaki fiyat avantajları göz önüne alındığında **AMD** işlemciler, Linux sistemler için öncelikli tavsiyemizdir.

### İleri Düzey Notlar

- **Intel:**

    > Bazı kullanıcı geri bildirimlerine göre, Intel işlemcilerde güç profili (power profile) seçenekleri sınırlı (genellikle 2 adet) kalabilmektedir.

- **Güvenlik Odaklı Sistemler:**

    > QubesOS gibi ekstrem güvenlik odaklı dağıtımları kullanmayı planlıyorsanız, AMD işlemcilerin güvenlik protokollerinde bazı tutarsızlıklar rapor edilmiştir. Bu durum, standart masaüstü kullanımını etkilemez.

### ARM Mimarisi

ARM tabanlı işlemciler masaüstü dünyasında henüz gelişme aşamasındadır.

- **Mevcut Durum:**

    > Android ekosistemi ve Raspberry Pi sayesinde Linux desteği gayet iyidir.

- **Gelecek Beklentisi:**

    > 23 Kasım 2025 itibarıyla Valve'in Steam Frame cihazı gibi atılımlar, ARM üzerinde oyunculuğun ve masaüstü deneyiminin hızla gelişeceğini işaret etmektedir.

## 2. Ekran Kartı (GPU) Seçimi

Linux deneyiminizi (özellikle oyun alanında) doğrudan etkileyen en kritik bileşen ekran kartıdır.

### AMD

Linux dünyasında en sorunsuz deneyimi sunar.

- **Kurulum:**

    > Genellikle ekstra bir sürücü kurulumu gerektirmez (Kernel içinde gelir).

- **Gerekli Paketler:**

    > Modern kartlar için `amdgpu` paketinin yüklü olduğundan emin olmanız yeterlidir.

### Intel Arc

Intel'in pazara sunduğu Arc serisi, Linux tarafında umut vaat
etmektedir.

- **Durum:**

    > Linus Torvalds'ın da kişisel sisteminde kullandığı bu kartlar için apt, dnf veya Arch repolarında sürücüler mevcuttur.

- **Kullanıcı Deneyimi:**

    > Şu ana kadar kayda değer kronik bir sorun bildirilmemiştir.

### Nvidia (Mutlaka Okuyun)

Nvidia, geçmişte Linux (özellikle Wayland) tarafında sorunlu olsa da,
RTX 5000 serisi ve modern sürücülerle odağını bu alana çevirmiştir.

!!! warning

    Sorunsuz bir deneyim için **Nvidia 580** ve üzeri sürüm numaralı sürücüleri kullanmanız şarttır.

**Sürücü Uyumluluk Tablosu (6 Aralık 2025 İtibariyle)**

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Dağıtım Grubu</strong></th>
<th><strong>Destek Durumu</strong></th>
<th><strong>Dağıtımlar</strong></th>
</tr>
<tr class="odd">
<th><strong>Tam Destek</strong></th>
<th>Ana depolarda v580+ sürücü mevcut</th>
<th><p>Fedora</p>
<p>Arch Linux (Manjaro dahil)</p>
<p>Ubuntu (Mint, Kubuntu, ZorinOS)</p>
<p>Debian + Nvidia Cuda (Pardus vb.)</p>
<p>NixOS</p>
<p>Void Linux</p></th>
</tr>
<tr class="header">
<th><strong>Test Aşaması</strong></th>
<th>Testing depolarında v580+ mevcut</th>
<th>Gentoo</th>
</tr>
<tr class="odd">
<th><strong>Destek Yok</strong></th>
<th>Depolarda güncel sürücü yok</th>
<th><p>Debian (LMDE, MXLinux, Antix)</p>
<p>PCLinuxOS</p></th>
</tr>
<tr class="header">
<th><strong>Sürücü Yok</strong></th>
<th>Nvidia sürücüsü dağıtılmıyor</th>
<th><p>Alpine Linux</p>
<p>Chimera Linux</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

_Ayrıca FreeBSD ve Solaris gibi UNIX sistemleri de Nvidia 580
sürücülerini kusursuz desteklemektedir._

## 3. Anakart Seçimi

Anakart seçimi, fan kontrolü ve sensörlerin doğru okunması açısından
önemlidir.

- **Önerilen Marka:** **ASRock**.

    > Linux uyumlu donanım üretme konusunda iyidirler ve Türkiye pazarında fiyat/performans ürünleri bulunmaktadır.

- **Alternatif:**

    > **Asus**. Linux tarafında genellikle sorunsuz çalışır.
    > [Bu adres üzerinden](https://www.asus.com/websites/global/aboutASUS/OS/Linux_Status_report_202510.pdf) Linux uyumlu Asus anakartlara bakabilirsiniz

!!! warning

    MSI ve diğer üreticilerde model bazlı araştırma yapılması önerilir; fan yönetimi gibi konularda yazılım desteği eksik olabilir.

## 4. Ağ Bağlantısı (USB Wi-Fi)

Ethernet kullanıyorsanız bu adımı atlayabilirsiniz. Kablosuz bağlantı
için aşağıdaki çipsetlere sahip adaptörler Linux çekirdeği tarafından
doğrudan desteklenir:

- **MediaTek:** MT7921, MT7922, MT7601U
- **Atheros:** AR9271
- **Ralink:** RT5370, RT5572
- **Realtek:** RTL8812AU, RTL8814AU

## 5. Çevre Birimleri ve RGB Kontrolü

Donanımınızın ışıklandırmasını ve makrolarını yönetmek için Linux
tarafındaki yazılım destekleri şöyledir:

- **Corsair:**

    > `ckb-next` yazılımı (Gentoo'da `ckb`) ile tam kontrol sağlanabilir, bu paket hemen hemen her dağıtımın repolarında bulunmaktadır.

- **Razer:**

    > [OpenRazer](https://openrazer.github.io/) projesi ile geniş kapsamlı destek sunulmaktadır.

- **Rampage:**

    > **Uzak durulması önerilir.** Monitörleri haricinde, klavye/fare gibi bileşenleri Linux tarafında yazılım desteği sunmamaktadır (23 Kasım 2025 itibariyle).

## Özet Tavsiyeler

### Hangi Dağıtımı Seçmeliyim?

Donanımınızı topladıktan sonra işletim sistemi seçimi için genel
önerimiz:

- **Genel Kullanıcı:** Fedora (Eğer Nvidia kuracaksanız [rehberi](https://linuxturkey.kavakci.dev/rehberler/fedora-nvidia-akmod-rehberi.html) okuyunuz)
- **Yeni Nvidia Kullanıcıları:** Manjaro (Stabilite ve son kullanıcı için elverişli olması nedeniyle)

### Laptop Kullanıcıları İçin Not

Toplama bilgisayar yerine dizüstü tercih edecekseniz; **Lenovo (Thinkpad
serisi özellikle), HP (Victus dahil), Dell ve Asus** modelleri Linux ile
yüksek uyumluluk göstermektedir. Detaylı laptop rehberi ayrıca
yayınlanacaktır.
