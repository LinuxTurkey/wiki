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

Nvidia'nın doğrudan Linux çekirdeği içerisine eklenmiş resmi bir sürücüsü bulunmamaktadır. `nouveau` adında açık kaynaklı bir topluluk projesi ile gelse de performans olarak başarılı değildir. Bu sebeple ekran kartından tam performans alabilmek için resmi sürücüler çekirdeğe ek modül olarak eklenmelidir.

Sürücüleri kurmak için kullandığınız dağıtımın yönergelerini takip etmeniz önerilir. **Nvidia'nın resmi sitesinden sürücü indirip kurmak önerilmez.** Aksi halde yeni bir çekirdek güncellemesi geldiğinde nvidia modülü tekrar elle eklenmedikçe yok sayılacağından siyah ekranla karşılaşabilirsiniz. Dağıtımlar kendi dinamik modül sistemleri ile bu süreci otomatikleştirmiştir (dkms, akmods vb.). Rehberin sonunda bununla ilgili bilgilendirme yapılmıştır.

Nvidia'nın açık kaynak kernel modülü ve kapalı kaynak (**tescilli** / **_proprietary_**) kernel modülü olarak iki adet farklı sürücüsü vardır. Açık kaynak `nvidia-open` sürücüsü yalnızca GTX 1650 ve daha üst model tüm ekran kartlarını desteklemektedir.

Nvidia, geçmişte Linux (özellikle Wayland) tarafında sorunlu olsa da,
RTX 5000 serisi ve modern sürücülerle odağını bu alana çevirmiştir. Wayland ile NVIDIA'nın sorun çıkardığı bilgisi eski bir bilgidir artık büyük oranda bu sorun çözülmüştür.

**Sürücü Desteği Tablosu**

<div class="nvidia-table-container">
  <table class="nvidia-table">
    <thead>
      <tr>
        <th>Ekran Kartı Ailesi ve Mimari</th>
        <th>Yaygın Modeller</th>
        <th>Önerilen Linux Sürücüsü (Ağustos 2026)</th>
        <th>Notlar</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>RTX 50 Serisi (Blackwell)</strong></td>
        <td>RTX 5090, 5080, 5070, 5060 (Laptop & Masaüstü)</td>
        <td><strong>610.x</strong> (veya min. 570.x)</td>
        <td>Açık kaynaklı (<code>nvidia-open</code>) çekirdek modülü zorunludur.</td>
      </tr>
      <tr>
        <td><strong>RTX 40 Serisi (Ada Lovelace)</strong></td>
        <td>RTX 4090, 4080, 4070, 4060, 4050 (Laptop & Masaüstü)</td>
        <td><strong>610.x</strong> veya <strong>580.x</strong></td>
        <td>Tam destekli. <code>nvidia-open</code> modülü önerilir.</td>
      </tr>
      <tr>
        <td><strong>RTX 30 Serisi & MX570 (Ampere)</strong></td>
        <td>RTX 3090, 3080, 3070, 3060, 3050 / MX570</td>
        <td><strong>610.x</strong> veya <strong>580.x</strong></td>
        <td>Tam destekli. Kararlılık için tescilli sürücü modülü denenebilir.</td>
      </tr>
      <tr>
        <td><strong>RTX 20 / GTX 16 Serisi & MX350 / MX450 / MX550 (Turing)</strong></td>
        <td>RTX 2080 - 2060 / GTX 1660 Ti - 1650 / MX350, MX450, MX550</td>
        <td><strong>610.x</strong> veya <strong>580.x</strong></td>
        <td><code>nvidia-open</code> sürücüleri destekleyen en eski gruptur. Kararlılık için tescilli sürücü modülü denenebilir.</td>
      </tr>
      <tr>
        <td><strong>GTX 10 Serisi & MX150 / MX250 / MX330 (Pascal)</strong></td>
        <td>GTX 1080 - 1050 / MX150, MX230, MX250, MX330</td>
        <td><strong>580.x</strong></td>
        <td><code>nvidia-open</code> sürücüsünü desteklemez! Bu kartlar için tescilli 580.x sürücüsü sondur; sonraki ana sürümlerde (<strong>590+</strong>) desteklenmez. Güvenlik güncellemeleri Ekim 2028'e kadar devam edecek. <br/> UYARI: Bu seri ve daha alt sürümler bazı dağıtımların NVIDIA ISO'ları ile uyumsuzdur, normal ISO ile kurulum yapıp sonrasında tescilli sürücü kurulmalıdır.</td>
      </tr>
      <tr>
        <td><strong>GTX 900 Serisi & 940MX / 930MX (Maxwell)</strong></td>
        <td>GTX 980M - 950M / 940MX, 930MX, MX110, MX130</td>
        <td><strong>580.x</strong> (veya 535.x)</td>
        <td><strong>Destek Sona Erdi.</strong> 580.x dalı bu mimariyi destekleyen son sürümdür (Legacy).</td>
      </tr>
      <tr>
        <td><strong>Kepler Mimarisi (470.x Sürücüsü)</strong></td>
        <td>GTX 700 / 600 Serisi, GT 730 (Kepler), GeForce 920M, 840M, 830M, 820M</td>
        <td><strong>470.x (Legacy)</strong></td>
        <td><strong>470 Sürücüsü Zorunlu.</strong><br>Proton'un çok eski versiyonlarını destekler, o sebeple oyun performansı kötüdür.</td>
      </tr>
      <tr>
        <td><strong>Fermi Mimarisi (390.x Sürücüsü)</strong></td>
        <td>GTX 500 / 400 Serisi, GT 610, GT 710, GeForce 820M, 710M, 610M</td>
        <td><strong>390.x (Legacy)</strong></td>
        <td><strong>Çok Eski.</strong><br>Güncel Linux çekirdeklerinde (Kernel 6.x+) çalıştırmak zordur. Dahili açık kaynaklı <code>nouveau</code> sürücüsü önerilir.</td>
      </tr>
    </tbody>
  </table>
</div>

!!! warning

    Sorunsuz bir deneyim için **Nvidia 580** ve üzeri sürüm numaralı sürücüleri kullanmanız şarttır. Ekran kartınız 580xx ve daha güncel sürücüleri desteklemiyorsa Proton'un güncel özelliklerinden yararlanamazsınız.

**Sürücü Uyumluluk Tablosu (Ağustos 2026 İtibariyle)**

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
<th rowspan="2"><strong>Tam Destek</strong></th>
<th>NVIDIA sürücüleri kurulu gelen dağıtımlar</th>
<th>
<p>CachyOS (kurulumda otomatik olarak uyumlu sürücü kurulur)</p>
<p>Nobara (açık kaynak ISO seçeneği vardır)</p>
<p>PikaOS (açık kaynak ISO seçeneği vardır)</p>
<p>Pop!_OS (açık kaynak ISO seçeneği vardır)</p>
<p>Bazzite (hem açık hem de tescilli sürücü içeren ISO imajı sunar)</p>
<p>Aurora/Bluefin (yalnızca açık kaynak sürücü)</p>
</th>
</tr>
<tr class="odd">
<th>Ana depolarda v580+ sürücü mevcut dağıtımlar</th>
<th>
<p>Fedora (Nobara, Ultramarine, Fedora Atomic)</p>
<p>Arch Linux (Endevouir, Manjaro vb. <br/>Not: v610xx sürümüne geçiş yaptı. v580xx tescilli sürümü ise AUR'da sürdürülüyor)</p>
<p>OpenSUSE</p>
<p>Ubuntu (Mint, Kubuntu, ZorinOS)</p>
<p>Debian + Nvidia Cuda (Pardus vb.)</p>
<p>Solus</p>
<p>NixOS</p>
<p>Void Linux</p>
</th>
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
<th>
<p>SteamOS</p>
<p>Alpine Linux</p>
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

[Hangi dağıtımı seçmeliyim?](https://linuxturkey.github.io/wiki/rehberler/hangi_dagitim.html) rehberini inceleyebilirsiniz.

### NVIDIA Kurulum Rehberleri

[Nvidia resmi kurulum rehberi](https://docs.nvidia.com/datacenter/tesla/driver-installation-guide/latest/index.html) üzerinden birçok dağıtım için kurulum adımlarını bulabilirsiniz.

- Fedora ([r/LinuxTurkey Fedora NVIDIA Akmod Rehberi](https://linuxturkey.github.io/wiki/rehberler/fedora-nvidia-akmod-rehberi.html) ve [resmi RPM dökümanı](https://rpmfusion.org/Howto/NVIDIA))
- OpenSUSE ([resmi döküman](https://en.opensuse.org/SDB:NVIDIA_drivers))
- Arch ([wiki](https://wiki.archlinux.org/title/NVIDIA))
- Solus ([resmi döküman](https://help.getsol.us/docs/user/hardware/nvidia-gpu-drivers/))
- ZorinOS ([resmi döküman](https://help.zorin.com/docs/hardware/activate-nvidia-drivers/))
- Gentoo ([wiki](https://wiki.gentoo.org/wiki/NVIDIA))

### Laptop Kullanıcıları İçin Not

Toplama bilgisayar yerine dizüstü tercih edecekseniz; **Lenovo (Thinkpad
serisi özellikle), HP (Victus dahil), Dell ve Asus** modelleri Linux ile
yüksek uyumluluk göstermektedir. Detaylı laptop rehberi ayrıca
yayınlanacaktır.
