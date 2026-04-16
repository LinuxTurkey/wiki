---
SPDX-License-Identifier: CC0-1.0
---

# Boot Güvenliğini Anlamak | Verified Boot Mechanism

\-----------------------------------------------------------------------------------------------------------------------------  
  
**Not: Bu makalede daha çok ChromiumOS'taki ve Androidteki verified boot düzenine "temel olarak" değinilmiştir. Zaman zamarn Apple Trusted Boot ve Edk2 Secure Boot'a da değinilse de temel olarak Google'ın sunduğu açık kaynak verified boot sistemleri öne çıkmaktadır.**

**-----------------------------------------------------------------------------------------------------------------------------**

  
Verified Boot, genel sistem bölümlerini korumak ve virüslerin(özellikle rootkitlerin) sistemin derinlerine sızmasını önlemek için uygulamaya koyulan bir çözümdür. Verified Boot'un temel amacı, başlatılan sistem dosyalarının saldırgandan değil de üreticinin kendisinden (veya son kullanıcının kendisinden) geldiğinden emin olmaktır.  
Verified Boot her saldırıyı engelleyemeyeceğini bilmekle beraber, temel hedefi kullanıcının cihazını modifiye edip edilmediğinden emin olmasını sağlamak ve saldırganlara karşı caydırıcı bir unsur olarak yer almaktır. Kullanıcı verilerini korumaz ve bir App Sandboxu sağlamaz.

Verified Boot'un mevcut olduğu cihazlara bakarsak Macbooklar, Iphonelar, Genel android cihazları, Windows 11 Secure Cored Pc destekleyen bilgisayarlar ve Chromebook'lar buna örnektir.

  
Verified Boot, genel olarak cihaz firmware'ındaki read only bir bölümün kodu kriptografik olarak doğrulaması ile başlar. Ardından genellikle kernel, bootloader veya Macbooklardaki LLB gibi bir bölüm doğrulanarak başlatılır ve sistem partitionlarını doğrulamaya başlar.

# Android Verified Boot

Genel Android cihazlarında, verified boot döngüsü boot rom'un başlatıcıyı(genellikle bootloader) doğrulaması ile başlanır. Ardından ise bootloader kerneli doğrular ve geri kalan işi kernele devreder.

Android'de verified boot döngüsünün temel yapı taşı, vbmeta partitionudur. Bu partition diğer altında bulunan partitionların kriptografik doğrulamasını(bundan sonra hash diyeceğim) içerir. Örnek olarak şöyle bir yapıdadır:

```
vbmeta(hash for boot-hashtree metadata for "system"-hashtree metadata for "vendor"  
  
boot(payload)  
system(payload hashtree)  
vendor(payload hashtree)  
other partitions(payload hashtree)
```

Ayrıca android a/b partition sistemini kullandığı için bu vbmeta_a, system_a... , vbmeta_b system_b vendor_b gibi şekillerinde ayrılabilir. Bazı android sürümlerinde ise vbmeta_system_a gibi ayrılmalar da olmuştur. Bazen de üreticiden üreticiye farklılık gösterebilir.

Android, bu hashtree'leri doğrulamak için Linux kernelindeki dm-verity modülünü kullanır. Yani teknik olarak sizde kendi ayırdığınız partitionları bununla koruyabilirsiniz, fakat geleneksel linux masaüstü buna pek elverişli olmadığından fs-verity daha dost canlısı bir çözümdür.

Ayrıca imzalı ama vulnerable sistem dosyalarının önyüklenmesini engellemek için Android sistem dosyalarına bir rollback index değeri atar. Böylece saldırgan eski vulnerable sistem dosyasını başlatamaz.

Not: Masaüstü Linux'ta vbmeta'ya gerçekten gerek yoktur çünkü vbmeta, farklı üreticilerin(Örneğin kerneli imzalayan google ile driverları yapan huawei) birbirlerinin imzalarını bilmeden verified boot sistemini rahatça yönetilebilmesi için tasarlanmıştır.

Ayrıca Verified Boot'ta bulunan fakat her üreticinin izin vermediği Bootloader Unlock veya Avb_custom_key sistemi mevcuttur. 

Bootloader Unlock edildiğinde sistem Orange State moduna girer, yazma kilitleri kaldırılır ve bootloader kerneli doğrulamaz. Fakat hala kernel dm-verity ile system, vendor gibi partitionları doğrulamaya devam eder.

Avb_custom_key eklendiğinde sistem Yellow State Moduna girer. Kullanıcı tarafından imzalanmış şeyler hala boot edilebilir fakat saldırgan kullanıcının key'ine erişemediği sürece sistem hala kapalı ve güvenli kalmaya devam eder. Grapheneos gibi işletim sistemleri bunu kullanır.

Özetle, Android Boot yapısı şu görseldeki gibidir.

# ChromeOS Verified Boot
ChromeOS'ta verified boot çözümü, vboot adı verilen bir coreboot payloadı'nın bootloader'i doğrulaması ile başlar. Ardından Bootloader kerneli doğrular ve Linux kerneli ROOT-A, ROOT-B ve diğer doğrulanması gereken partitionları doğrular, eğer doğrulama eşleşmediyse sistemi boot etmez.

Androide göre çok daha basittir ama güvenlik uzmanlarına göre temel bir korumadır, gelişmiş değildir. 


\----------------------------------------------------------------------------------

**Kaynakça:** https://android.googlesource.com/platform/external/avb/+/android16-qpr2-release/README.md#the-vbmeta-digest

https://www.chromium.org/chromium-os/chromiumos-design-docs/verified-boot/

https://source.android.com/docs/security/features/verifiedboot/avb?hl=tr
