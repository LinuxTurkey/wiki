# Linux Uyumlu Donanım Seçim Rehberi

> **Yazar:** [Kayra](https://www.x.com/QMinun)

## Neden bu rehbere ihtiyacımız var? 
Statista'nın sağladığı veriye göre dünya üzerindeki sunucuların yaklaşık %96 kadarı Linux kerneli kullanan işletim sistemleri (ya da topluluk jargonuyla dağıtımları) üzerinden yürüyor. Bu da sunucu odaklı geliştirilmiş donanımların Linux'ta zaten halihazırda tak çalıştır şekilde çalıştığı anlamına geliyor. Ancak bu durum ne yazık ki masaüstü kullanıcısı odaklı donanımlarda tam olarak böyle değil. Masaüstü Linux kullanımı yavaştan büyümeye başladı. Amerikan hükümet raporuna göre masaüstü Linux kullanımı %6 civarına ulaşmış durumda. Biz de masaüstü Linux kullanıcıları için donanım seçme rehberi yapma kararı aldık.

## CPU Seçimi

Her CPU hemen hemen her işletim sisteminde çalışır. Bu konuya özellikle dikkat etmenize gerek yok. Hem Intel hem AMD işlemcileri Linux tarafında sorunsuz çalışmakta.

Bazı kullanıcılar, Intel işlemcilerde güç profili sayısının 2 ile kısıtlı olduğunu bildirmiş durumda. QubesOS ekibine göre de AMD işlemciler tutarsız güvenlik protokollerine sahip. Ancak bunu "AMD genel olarak sorunlu" şeklinde algılamayın, bu sadece çok spesifik teknik bir alan için geçerli.

Biz Türkiye'deki fiyat avantajından ötürü AMD işlemcileri önersek de bireysel tercihiniz burada olumsuz bir sonuç doğurmayacaktır

### Arm işlemciler hakkında 
Arm işlemcileri genel olarak masaüstü tarafında emekleme aşamasında. Ancak ARM Linuxlar, Android ve Raspberry Pi sayesinde yeterince iyi durumda mevcut halleri ile. Bu yazının yazıldığı 23 Kasım 2025 tarihinde Valve'nin Steam Frame cihazı sayesinde ARM tarafında oyun sektörünün de gelişmesi bekleniyor. 

## GPU Seçimi

### AMD
AMD GPUlar Linux'ta tak çalıştır olacak şekilde çalışmaktadır. Modern bir AMD GPUya sahipseniz `amdgpu` paketini indirmeyi isteyebilirsiniz. 

### INTEL Arc

Intel'in piyasaya yeni sürdüğü Arc GPUları ile ilgili ne yazık ki elimizde çok fazla kullanıcı verisi yok. Ancak Linux için driver dağıtıyor (apt, dnf, arch linux) ve kullanıcılar arasında henüz sorun bildiren bir kişiye rastlanmadı. 

### Nvidia

Nvidia Linux tarafında epey sorunluydu eskiden. X11 kısmında sorun çıkarmasa da Wayland kullanmak istediğinizde kullanılamaz haldeydi. Nvidia, RTX 5000 serisini yayınlamasıyla birlikte odak noktasını sunuculara çevirdi. Modern Nvidia driverlarıyla birlikte Linux tarafındaki tüm sorunlarını çözdüler ve şu sıralar odak noktaları Linux driverları. Asus işbirliğiyle kendi Linux dağıtımlarını bile yaptılar. 

Nvidia, spesifik olarak 580 numaralı driverları ile birlikte UNIX'te tamamen verimli şekilde kullanılabiliyor. 

Linux olmayan UNIX işletim sistemleri arasında Nvidia driverları alanlar şunlar:
* FreeBSD (Nvidia 580 sürücü desteği, kusursuz çalışıyor)
* Solaris (Nvidia 580 sürücü desteği, kusursuz çalışıyor)

Nvidia'nın 580 sürüm numaralı sürücülerinin Linux tarafındaki önemi epey fazla. Mutlaka dikkat etmeniz gerek. Bu, dağıtım seçerken de birinci önceliğiniz olmalı.

23 Kasım 2025 itibariyle buna uyan dağıtımlar:

**Ana repolarda 580 ve üstü sürücü desteği veren dağıtımlar**
* Fedora
* Arch Linux
* Ubuntu
* Manjaro
* NixOS
* Void Linux
* Pardus
* ZorinOS

**Testing repolarında 580 ve üstü sürücü desteği veren dağıtımlar**
* NixOS
* Gentoo

**Herhangi bir repoda 580 ve üstü sürücü vermeyen dağıtımlar**
* Debian
* Linux Mint
* PCLinuxOS

**Nvidia dağıtmayan dağıtımlar:**
* Alpine Linux
* Chimera Linux

Biz popüler dağıtımlar arasında böyle bir liste hazırlamış olsak da dağıtım repoları arasında nvidia sürücü durumunu kontrol etmek isteyebilirsiniz.
Nvidia kullanıyorsanız ve performans kaybı ve kusurlar olmadan bilgisayarınızı kullanmak istiyorsanız Nvidia 580 sürücülerini indirmeniz şart.

## Anakart seçimi

Asrock markası Linux için uyumlu donanımlar üreten bir marka ve Türkiye'de, hepsiburada, sinerji gibi platformlarda uygun fiyatlı anakartlar satıyor. Asus da Linux tarafında epey iyi çalışan donanımlar üreten bir marka. MSI gibi üreticiler ise ne yazık ki iyi bir tercih olmayabiliyor bazen.

Anakart konusunda epey dikkat etmeniz ve biraz da kendiniz araştırma yapmanızda fayda var. Bazen seriden seriye çok şey değişebiliyor. Biz genel olarak değerlendirme yaptık. Fan yönetimi gibi konularda sorun yaşamamak için buna dikkat etmeniz gerek. 

Biz r/linuxturkey olarak ASRock marka anakartlar öneriyoruz. İkincil bir tercih olarak Asus markasına da bakabilirsiniz

## USB Wi-fi Adaptörleri
Not: Ethernet kablosu kullanıyorsanız bu kısmı önemsemeniz gerekmiyor

Linux tarafında USB Wi-fi adaptörlerinde artık pek sorun olmuyor
Linux tarafında desteklenenler:

* MT7921/MT7922 Atheros AR9271
* Ralink RT5370 / RT5572
* Mediatek MT7601U
* RTL8812AU / 8814AU
* MT7921/MT7922

Bu chipsetler Linux ve BSD tarafında sorunsuz çalışıyor. 

## RGB Klavye & Fare
* **Corsair:** `ckb-next` (Gentoo için: `ckb`)
* **OpenRazer:** https://openrazer.github.io/
* **Rampage:** Eğer Linux odaklı bir sistem toplayacaksanız, monitörleri dışında bu markadan uzak durmanızı bu rehberin yazıldığı 23 kasım 2025 tarihi itibariyle şiddetle öneriyoruz.

## Donanımı topladık, hangi dağıtımı seçmeliyiz?

Topluluk olarak yeni kullanıcılara Fedora, yeni Nvidia kullanıcılarına Manjaro öneriyoruz.

## Ben laptop alacağım, ben ne yapayım?
Çoğu Lenovo, HP (victus dahil), Dell ve Asus laptop Linux'ta sorunsuz çalışıyor. Laptoplar ile ilgili yakın zamanda farklı bir rehber hazırlayacağız

