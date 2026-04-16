---
SPDX-License-Identifier: CC0-1.0
---
# Immutable Linux Dağıtımları Nedir?

Öncelikle Selamlar, bu postumda immutable kötüleyicileri(gelenekseller, muhafazakarlar) ve geleneksel linux masaüstü savunucularına birkaç şey söylemek için yazdım.

Bunlara immutable distroların ne olduğunu anlatmakla cevap vereceğim.

## Immutable Linux Dağıtımları Nedir?
Immutable linux dağıtımları, Fedora Atomic(Coreos, Silverblue, Kinoite ve diğerleri...), Almalinux CoreOS, RHEL Bootc, Fedora Bootc, Bazzite, SteamOS, Ubuntu CoreOS, **Android, ChromeOS** ve Kde Linux gibi dağıtımlardır. 
Bunlar genellikle bir temel base imaj olur ve o imajın üstüne layer ekleyerek yeni paketlerin kurulumu sağlanır(Android ve ChromeOS'ta bu durum farklıdır bu postta daha çok RPM-OSTREE kullananlara değineceğim). Distrobox bağımlılığı yoktur, fedorada rpm-ostree kullanılarak ek layer eklemesi yapılabilir. Ayrıca /etc, /var gibi konfigürasyon dosyaları da değiştirilebilirdir. Yani Immutable yanlış bir kavramdır.
Ayrıca bu dağıtımlar genelde Flatpak ve Snap paketlerine öncelik verir.

## Peki Neden Immutable Distrolar?
Immutable dağıtımlar biz istesekte istemesek de son kullanıcılar için iyi bir alternatiftir. Immutable dağıtımların standartlaşması ve paket yönetiminin gelişmesi durumunda immutable dağıtımlardaki sorunların %90'ı ortadan kalkacaktır.
Ayrıca immutable dağıtımlar kullanıcı için stabillik, güvenlik için altyapı sağlar. Immutable dağıtımların genelinin boot güvenliği varsayılan olarak ayarlanmamış olsa da birkaç patch ile birlikte ve linux kernelinin dm-verity ve fs-verity gibi modüllerinin kullanımıyla boot güvenliği yazılım seviyesinde sağlanabilir ve bu son kullanıcı için yeterlidir.
Ayrıca Immutable dağıtımların stabil olmasının nedeni, base sistemin dağıtım geliştiricileri tarafından genelde test edilip sunulmasıdır. Bu sayede SteamOS gibi yine Immutable fakat stabilitesinin eksikliği ile bilinen Arch Linux gibi dağıtımları base alan dağıtımlar stabilitesini koruyabilir.
Ayrıca Android ve ChromeOS Immutable bir Linux dağıtımıdır.

## Gelecek Immutable Distrolarda Mıdır?
Bu soru gayette güzel bir sorudur. Özellikle muhafazakar linux dağıtımlarından Immutable Linux dağıtımlarına geçiş ani olmasa da 10 yıl önceki immutable dağıtımlara bakış açımızla şuanki aynı değildir. Şuanda linux genelinde bir immutability'ye, bir devrime ihtiyacımız var. Linux masaüstü, eskiye dönük olmaktan ziyade yeni teknolojileri gözlemelidir. Mesela ```glibc``` ve ```grub``` dan, llvm ve systemd-boot(veya ihtiyaca göre limine) a geçilmelidir.
