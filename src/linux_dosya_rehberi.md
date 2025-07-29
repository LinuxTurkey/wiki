# Dosyaları ve dizinleri anlamak

Linux Dosya Hiyerarşisi Yapısı veya Dosya Sistemi Hiyerarşisi Standardı (FHS), Unix benzeri işletim sistemlerinde dizin yapısını ve dizin içeriğini tanımlar. Linux Vakfı tarafından sürdürülmektedir.

FHS'de tüm dosya ve dizinler, farklı fiziksel veya sanal aygıtlarda saklansalar bile / kök dizini altında görünür.

Bu dizinlerden bazıları yalnızca X Pencere Sistemi gibi belirli alt sistemler yüklüyse belirli bir sistemde bulunur.

Bu dizinlerin çoğu tüm UNIX işletim sistemlerinde mevcuttur ve genellikle aynı şekilde kullanılır; ancak, buradaki açıklamalar özellikle FHS için kullanılanlardır ve Linux dışındaki platformlar için geçerli kabul edilmezler.

## Temel Linux Dosya Yapısı

```bash
├── bin -> usr/bin
├── boot
├── dev
├── efi
├── etc
├── home
├── lib -> usr/lib
├── lib64 -> usr/lib
├── lost+found
├── mnt
├── opt
├── proc
├── root
├── run
├── sbin -> usr/bin
├── srv
├── sys
├── tmp
├── usr
└── var
```

Linux dosya sistemindeki her dizinin belirli bir işlevi vardır, Bazı önemli dizinler aşağıda listelenmiştir:

## / (kök dizin)

Kök dizin, Linux dosya sistemindeki en üst düzey dizindir. Diğer tüm dizinler ve dosyalar kök dizin içinde yer alır.

## /bin

Binaries (ikili dosyalar) anlamına gelir. Bu dizin, temel sistem yönetimi görevleri için gerekli olan temel komut satırı araçlarını ve programlarını içerir.

## /boot

boot dizini, sistemi başlatmak için gereken önyükleyici dosyalarını ve çekirdek görüntülerini içerir.

## /dev

dev dizini, donanım aygıtlarını ve terminaller, yazıcılar ve diskler gibi sanal aygıtları temsil eden aygıt dosyalarını içerir.

## /etc

etc dizini, sistemdeki çeşitli uygulamalar ve hizmetler tarafından kullanılan sistem yapılandırma dosyalarını içerir.

## /home

home dizini sistemdeki kullanıcıların ev dizinlerini içerir. Her kullanıcının /home içinde kişisel dosyalarını ve ayarlarını saklayabileceği kendi alt dizini vardır.

## /lib

lib dizini, sistemdeki çeşitli programlar tarafından ihtiyaç duyulan paylaşılan kütüphane dosyalarını içerir.

## /media

media dizini CD'ler, DVD'ler ve USB sürücüler gibi çıkarılabilir medyaları bağlamak için kullanılır.

## /mnt

mnt dizini, ağ dosya sistemleri veya disk görüntüleri gibi dosya sistemlerini geçici olarak bağlamak için kullanılır.

## /opt

opt dizini, çekirdek sistemin bir parçası olmayan ek yazılım paketlerini depolamak için kullanılır.

## /proc

proc dizini, çalışan işlemler ve sistem kaynakları hakkında bilgi sağlayan sanal bir dosya sistemidir.

## /run

run dizini, sistem hizmetleri ve daemon'lar tarafından oluşturulan geçici dosyaları içerir.

## /sbin

sbin dizini sistem ikili dosyalarını ve sistem bakımı için gerekli olan yönetimsel araçları içerir.

## /srv

/srv dizini, sistem tarafından sağlanan hizmetlere ilişkin verileri depolamak için kullanılır.

## /sys

sys dizini, sistemin donanımı ve aygıtları hakkında bilgi sağlayan sanal bir dosya sistemidir.

## /tmp

tmp dizini, sistem üzerinde çalışan uygulamalar ve hizmetler tarafından oluşturulan geçici dosyaları içerir.

## /usr

usr dizini kullanıcı düzeyinde programlar, kütüphaneler, belgeler ve paylaşılan veri dosyalarını içerir.

## /var

var dizini, günlük dosyaları ve sistem veritabanları gibi sık değişen değişken veri dosyalarını içerir.

### Yazar(lar)

theBruh141
