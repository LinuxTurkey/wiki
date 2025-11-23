# Linux Uyumlu Donanım Seçim Rehberi

> **Yazar:** [Kaira](https://www.reddit.com/user/chanyu_k/)

Dünya üzerindeki serverların %87-91 kadarı Linux üzerinden çalışıyor. Bu server odaklı donanımların Linux'da iyi çalıştığı anlamına geliyor.

Bu rehberde sizlere Linux odaklı donanım almak istediğiniz vakit nelere yönelmeniz gerek, hangi cihazlar hangi senaryolarda verimli vs bunlardan bahsedeceğim.

## CPU

Tüm CPU'lar Linux üzerinde çalışır. Linux ile en uyumlu CPU, ARM mimarili işlemcilerdir (bunun sebebi Android'dir). Masaüstü için Intel CPU öneririm ama AMD cpular da Linux tarafında sizi üzmeyecektir.

## GPU

AMD ve İntel GPU'lar Linux'ta sorunsuz çalışır. Sürücüleri çekirdeğe gömülüdür. Çekirdek, donanımınızı algılayıp gerekli modülü önyükleme sırasında aktif edip gereksiz modülleri kapatır. Dolayısıyla tak-çalıştır mantığıyla en güncel sürücülerle bu GPU'ları kullanabilirsiniz.

### Nvidia

NVIDIA tarafında Linux desteği uzun yıllar boyunca çeşitli sorunlarla anılıyordu. Görüntü yırtılmaları, kare senkronizasyon sorunları, ekrana görüntü basamama ve genel kararsızlıklar özellikle eski nesil sürücülerde yaygındı. Bu durum, NVIDIA v580 sürücüleri yayımlanana kadar büyük ölçüde devam etti.

En güncel sürücüler olan NVIDIA v580 sürücülerinin yayınlanması ile birlikte Nvidia tarafındaki bütün dertlerimiz tamamen yok oldu.

Hatta v580 sürücülerinin sunduğu kararlılık seviyesinin, birçok senaryoda Linux üzerindeki AMD GPU sürücülerinin önüne geçtiğini söylemek mümkün.

Linux tarafında Nvidia GPU kullanacaksanız v580 öncesi sürücüleri kurmanızı önermiyoruz.

Eğer GT/GTX bir ekran kartına sahipseniz bu dediklerimin hiçbiri geçerli değil. O kartlarda sürücü kurmanıza gerek yok, onlar kernele gömülü.

Eğer Nvidia GPU'lara sahipseniz aşağıdaki Linux dağıtımlardan uzak durun:

- Debian (535)
- Linux Mint (565)
- Manjaro (575)
- NixOS (570)

Gönül rahatlığıyla kullanabileceğiniz ve ekran kartı konusunda asla ama asla sorun yaşamayacağınız dağıtımlar:

- Arch Linux
- Ubuntu
- Fedora
- Gentoo
- OpenSUSE (kurulumu sıkıntılı bundan uzak durun yeniyseniz)

Bu dağıtımların hepsi 580 sürücü paketine sahip. Dolayısıyla Nvidia GPU'ya sahipseniz bunları kullanmalısınız.

## USB Wi-fi Adaptörleri

Linux tarafında desteklenenler:

- MT7921/MT7922 Atheros AR9271
- Ralink RT5370 / RT5572
- Mediatek MT7601U
- RTL8812AU / 8814AU
- MT7921/MT7922

Bu _chipsetler_ Linux tarafında mükemmel çalışıyor. Ethernet kablosu kullanıyorsanız bu kısmı önemsemeniz gerekmiyor

## RGB Klavye & Fare

- **Corsair:** [ckb-next](https://github.com/ckb-next/ckb-next)
- **OpenRazer:** [openrazer.github.io](https://openrazer.github.io/)
- **Rampage:** Ayar ve yapılandırma yazılımları sadece Windows'u destekler. Linux desteği yoktur.
