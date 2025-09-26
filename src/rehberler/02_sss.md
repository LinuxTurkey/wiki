# Sıkça Sorular Sorular 

## Windows'tan Linux'a geçmeli miyim?

### Linux'un Avantajları

- **Kullanıcılarına özgürlük ve kontrol olanağı sağlar.** İstediğiniz masaüstü ortamını istediğiniz tema ile; istediğiniz performans ayarlarını istediğiniz zaman kullanabilirsiniz. (ör. [Gnome](https://www.gnome.org/), [KDE](https://kde.org/tr/), [Mate](https://mate-desktop.org/), [Xfce](https://www.xfce.org/))
- **Dağıtımlar çoğunlukla ücretsizdir,** bu yüzden işletim sistemi lisansına para ödemek veya korsan yöntemlere başvurmak zorunda kalmazsınız.
- Hem yüklü olan veya yüklenecek uygulamaların veya araçların neredeyse hepsinin açık kaynaklı olmasından ötürü, hem de market payı düşük bir işletim sistemi olmasından ötürü **virüs kapma riski çok azdır.**
- **Yazılım yüklemek çok daha kolaydır,** dağıtımınızın yazılım deposunda istediğiniz yazılımı aratıp indirebilirsiniz. (ör. [Flathub](https://flathub.org/), [Debian Packages](https://www.debian.org/distrib/packages), [Arch Linux Packages](https://archlinux.org/packages/))
- **Aygıt sürücüleri çoğunlukla otomatik olarak yüklenir.** Nadiren bazı donanımlar ek sürücüler yüklemeyi zorunlu kılabilir.
- Çoğunlukla Windows ve macOS'e göre **daha az bellek ve işlemci gücü kullanır.** Ancak bu kullanılan dağıtıma veya sistem yapılandırmasına göre değişebilir.
- Proton (Valve <3) ve Lutris gibi araçlar sayesinde, oynayacağınız oyun Linux için çıkarılmamış olsa bile Windows'ta **oynadığınız oyunların büyük bir çoğunluğu desteklenir.** (bkz. [ProtonDB](https://www.protondb.com/explore))

### Linux'un Dezavantajları

- **Windows'a özel çoğu program Linux'ta çalışmaz** (ör. Adobe programları, Microsoft Office, çoğu DAW). Alternatiflerinin bulunmasını gerektirir (ör. LibreOffice, GIMP, Krita, Inkscape). Bunların dışında çoğunlukla profesyonel amaçlı kullanılan yazılımların büyük bir çoğunluğu Linux için çıkarılmaz (ör. CAD yazılımlarının büyük bir çoğunluğu).
- Çekirdek seviyesinde çalışan **anti-cheat içeren çoğu oyun çalışmaz** (ör. Vanguard, EA Anticheat). Hangi anti-cheat içeren oyunların çalıştığını öğrenmek için [Are We Anti-Cheat Yet?](https://areweanticheatyet.com/) veri tabanına göz atabilirsiniz.
- Çoğu Nvidia sürücüsü destekleniyor olsa da **Linux'un Nvidia ile arası tarihsel olarak pek iyi olmamıştır.** Ekran kartınızın desteği hakkında kısa bir araştırma yapmanız tavsiye edilir.

## Linux en çok kimlere uygundur?

**Herkes için uygundur.** Örneğin [Linux Mint](https://linuxmint.com/), her türlü kullanıcıya rahat bir deneyim sunar. Ancak genel kitleyi hesaba katarsak: yazılımcılara, meraklı kullanıcılara, gizliliğine önem verenlere ve özgür yazılım fikri ile ilgilenenlere daha uygun bir işletim sistemi grubudur.

## Linux hakkında yanlış bilinenler

- _"Linux her şeyi daha hızlı yapar."_ Her zaman değil, kullandığınız programlara ve seçtiğiniz dağıtıma göre bu çok değişiklik gösterir.
- _"Linux kullanmak için komut satırına bir sürü kodlar yazmak gerekir."_ Bu günümüzde pek geçerli değildir, popüler dağıtımların çoğunda sıradan bir Linux kullanıcısı terminal ile hiç etkileşime girmeden tüm sistemi yönetebilir ve kullanabilir. Sistemi daha hızlı kullanabilmek için bazı komutları bilmek, örneğin paket yükleme komutları gibi, faydalı olabilir, ancak zorundalık değildir. Neredeyse her şeyin grafik arayüzü vardır.
- _"Linux kullanmak hackerlıkta yardımcı olur."_ Bu doğru değildir. Çok güzel yemekler yemek sizi aşçı yapmıyorsa, Linux kullanmak da sizi "hacker" yapmayacaktır. Siber güvenlikle alakalı profesyonel kurslara başvurmak daha mantıklı bir çözüm olacaktır.
- _"Linux bir işletim sistemidir."_ Hayır, Linux bir işletim sistemi çekirdeğidir. Bu çekirdeğin üzerine eklenerek yazılmış tüm projelere dağıtım, yani işletim sistemi adı verilir. Örneğin Ubuntu bir dağıtım/işletim sistemidir, Linux ise Ubuntu dağıtımının çekirdeğidir.

## ... dağıtımdan ... dağıtıma geçmeli miyim?

Çoğu Linux dağıtımı, belirli programlar ve masaüstü ortamlarıyla birlikte gelse de **modüler bir yapıya sahiptir**. Yani istediğiniz programı, masaüstü ortamını veya pencere yöneticisini değiştirebilir ya da birden fazlasını aynı anda kullanabilirsiniz. Örneğin:

* Gnome ile gelen Ubuntu’ya, depolardan KDE kurarak Ubuntu üzerinde KDE kullanabilirsiniz.
* Dosya yöneticisi gibi temel uygulamaları da değiştirebilirsiniz. Örneğin, Nautilus yerine Dolphin tercih edebilirsiniz.
* Eğer kullandığınız Linux çekirdeği donanımınızda sorun çıkarıyorsa, LTS (“Uzun Vadeli Destek”) çekirdeğini kurup test edebilirsiniz.

Dolayısıyla dağıtımlar arasındaki en temel fark aslında **yazılım depolarıdır**. Mesela bir dağıtımda Chrome 140 sürümündeyken, başka bir dağıtımda 139 sürümünde olabilir. Bu fark, dağıtımların **güncellik–stabilite** dengesine yönelik tercihleriyle ilgilidir.

Eğer hala kararsızsanız:

* Daha güncel paketlere ulaşmak ama zaman zaman hatalarla karşılaşmayı göze almak istiyorsanız &rightarrow; **[Arch Linux tabanlı dağıtımlar](https://distrowatch.com/search.php?basedon=Arch)**
* Daha stabil ama paketleri nispeten eski olan bir sistem istiyorsanız &rightarrow; **[Debian tabanlı dağıtımlar](https://distrowatch.com/search.php?basedon=Debian)**

tercih edebilirsiniz.
