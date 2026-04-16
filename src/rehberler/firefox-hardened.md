---
SPDX-License-Identifier: CC0-1.0
---

# Firefox'u Hardened Yapma Rehberi

!!! note
```
Linux Kullanıyorsanız ve Firefox'u Kaynaktan Derlediyseniz veya Tarball olarak kurduysanız apparmor veya selinux yapılandırması oluşmayacağı için https://support.mozilla.org/tr/kb/linux-security-warning?as=u&utm_source=inproduct bu makaleyi okumanızı şiddetle öneririm. Aksi takdirde altta yaptığımız yapılandırmalar güvenlik açısından zayıf kalabilir. Flatpak, Snap veya .deb paketinden kurduysanız makaleye bakmanıza gerek yoktur.
```

!!! note
```
Firefox, güvenlik açısından(özellikle sandboxing) chromium'dan çok daha geridedir. Eğer güvenliği önemseyen biriyseniz [bu makaleye](https://github.com/RKNF404/chromium-hardening-guide) göre chrome'u hardened yapmak veya fedora tabanlı bir dağıtım kullanıyorsanız trivalent kullanmak gibi seçeneklere başvurmalısınız.
```


### about:config ayarları

Burada uzun uzun about:config ayarlarını ayarlamayı anlatsam makale sığmayacağı için size en iyisinden bir user.js öneriyorum. https://github.com/arkenfox/user.js/

**Nasıl Kurulur?**
Arama motorunuza about:support yazın. Çıkan yerde Profil Dizinini Açın ve kullandığınız Dizinin içine açarak attığım github linkinden user.js dosyasını indirip içine atın. Varsayılan profiliniz genelde xxxxxxxx.default-release şeklindedir. Firefox'u yeniden açtığınızda boş sayfa geliyorsa yapılandırma başarıyla tamamlanmış demektir.

**Değiştirmek İsteyeceğiniz Bazı Şeyler**
- Firefox'u kapatınca Gezinti verilerinin silinmesi: Buna şifre gibi veriler de dahildir. privacy.sanitize.sanitizeOnShutdown değerini user.js dosyasının üzerinde bir metin editörü kullanarak(örnek olarak Kate,Nano, Vim, Gnome text Editor, Visual studio code, VSCodium) false yapmak veya olduğu satıra diyez koymak gereklidir.

- Adres Çubuğu Önerileri: Arama verileriniz google'a gittiği için kapatılmıştır. Açmak için yine bir metin editörü kullanarak browser.urlbar.suggest.history ve browser.urlbar.suggest.bookmark değerlerini ```true``` yapmak gereklidir.

- Otomatik Şifre ve Form Doldurma: Firefox'un kendi password manager'ini kapatır. signon.autofillForms ve browser.formfill.enable değerini true yapmak gereklidir.

- WebRTC Görüntülü Görüşme Ayarları: Arkenfox gerçek ip adresinin sızmaması için bunu kısıtlar fakat bu bazı görüntülü görüşmelerin yapılmamasına sebebiyet verebilir. media.peerconnection.enabled ayarı true yapılmalıdır.

- Tarayıcıyı Başlattığında açılacak sekme ve yeni sekme: Arkenfoxta varsayılan olarak bunlar boş sayfa gelir. Eğer kendiniz ayarlamak istiyorsanız 93. ve 97. satırların başına # işareti koymanız gerekmektedir.

*Not: Yukarıda bahsettiğim şeyleri mümkün olduğunca oynamamanız güvenlik ve mahremiyetiniz için en iyisi olacaktır.*

### İşinize Yarayabilecek Bazı Eklentiler
!!! note
```
Gizliliğinizi korumak için eklentileri minimumda tutmanız önerilir. Çünkü her eklenti fingerprint'inizi değiştirir ve benzersiz fingerprint websitelerinin sizi daha agresif takip etmesi demektir.
```
[Ublock Origin](https://addons.mozilla.org/tr/firefox/addon/ublock-origin/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search): Reklam ve Bazı Takip Çerezlerini Önlemek İçin Çokça Tercih Edilen Firefox'ta En Çok Kullanılan Eklentilerden Biri

[NoScript](https://addons.mozilla.org/tr/firefox/addon/noscript/): Javascript'i Kısıtlamak İçin Kullanılan Eklenti. İşinde Başarılı fakat Ublock Origin'de bu yapılabilir. **Yani uBlock Origin ile beraber bunu kullanmak mantıksızdır.**

[ClearUrls](https://addons.mozilla.org/tr/firefox/addon/clearurls/): Bazı Takip Parametrelerini Temizler Gizlilik İçin Önemlidir. Fakat Ublock Originde Url Tracking ayarını aktifleştirirseniz bu daha sağlıklı olur çünkü eklentileri minimum'da tutmak gizlilik ve güvenliği arttırır. **Yani uBlock Origin ile beraber bunu kullanmak mantıksızdır.**

[Decentraleyes](https://addons.mozilla.org/tr/firefox/addon/decentraleyes/): Google Kütüphaneleri yerine yerel çözümler sunarak Takip edilmenin önüne geçer. Hız Açısından siteler biraz yavaşlayabilir. [LocalCDN](https://addons.mozilla.org/tr/firefox/addon/localcdn-fork-of-decentraleyes/) daha günceldir ve daha fazla kütüphane destekler. Fakat [Arkenfox'un açıklamasına](https://github.com/arkenfox/user.js/wiki/4.1-Extensions) göre Firefox zaten bu kütüphaneleri birbirinden izole edebiliyormuş ve Arkenfox'ta bu özellik açıkmış. Yani kullanılmasına gerek yokmuş.

### Bazı Ayarlar
Gelişmiş İzlenme Koruması Ayarını Sıkı Yapmak: Ayarlar>Gizlilik ve Güvenlik>Gelişmiş İzlenme Koruması Altından Ayarı Sıkı yapmanız önerilir. Herhangi bir sıkıntı çıkmaması için Önemli site sorunlarını düzelt ve Küçük Site sorunlarını düzelt seçeneklerini işaretlemenizi öneririm.


Ayarlar>Gizlilik ve Güvenlik> içerisindeki Tehlikeli ve Aldatıcı İçerikleri Engelle, DNS'te arttırılmış korumayı seç ve NextDNS'i varsayılan DNS sağlayıcı olarak ayarla ve Yalnızla HTTPS modunu tüm pencerelerde etkinleştir gibi Ayarları da yapmanızı öneririm.

