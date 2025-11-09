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

- Gnome ile gelen Ubuntu’ya, depolardan KDE kurarak Ubuntu üzerinde KDE kullanabilirsiniz.
- Dosya yöneticisi gibi temel uygulamaları da değiştirebilirsiniz. Örneğin, Nautilus yerine Dolphin tercih edebilirsiniz.
- Eğer kullandığınız Linux çekirdeği donanımınızda sorun çıkarıyorsa, LTS (“Uzun Vadeli Destek”) çekirdeğini kurup test edebilirsiniz.

Dolayısıyla dağıtımlar arasındaki en temel fark aslında **yazılım depolarıdır**. Mesela bir dağıtımda Chrome 140 sürümündeyken, başka bir dağıtımda 139 sürümünde olabilir. Bu fark, dağıtımların **güncellik–stabilite** dengesine yönelik tercihleriyle ilgilidir.

Eğer hala kararsızsanız:

- Daha güncel paketlere ulaşmak ama zaman zaman hatalarla karşılaşmayı göze almak istiyorsanız &rightarrow; **[Arch Linux tabanlı dağıtımlar](https://distrowatch.com/search.php?basedon=Arch)**
- Daha stabil ama paketleri nispeten eski olan bir sistem istiyorsanız &rightarrow; **[Debian tabanlı dağıtımlar](https://distrowatch.com/search.php?basedon=Debian)**

tercih edebilirsiniz.

## X11 mi Wayland mi?

### Genel kullanım

Eskisine kıyasla Wayland, günümüzde X11 kadar desteklenmektedir. Sadece X11 desteği olan arayüzler ise `xwayland` aracılığı ile çoğunlukla çalıştırılabilmektedir.

Ancak **hyprland** gibi Wayland dizgicileri, Nvidia ekran kartlı bilgisayarlarda doğru bir şekilde çalışabilmesi için [ön hazırlık](https://wiki.hypr.land/Nvidia/) gerektirmektedir. Diğer Wayland dizgicileri ile alakalı, Nvidia'ya özgü ayarların araştırılması, yaşanabilecek hataların önlenmesi açısından önemlidir.

### Güvenlik

Wayland, tüm pencerelerin girdi ve çıktılarını sistemden izole eder, bu hem girdi hem de çıktı açısından güvenli bir protokol olmasını sağlar. X11, bu tip güvenlik özelliklerinden mahrumdur.

Ek olarak; Wayland bir dizgicide çalışan çoğu kod, kök kullanıcı düzeyinde çalışmayı gerektirmez, çoğunlukla _client_ tarafında çalışır. Bu sebeple kök izni kaynaklı bir güvenlik açığının oluşması engellenmiş olur.

### VNC ve ağ üzerinden görüntü

Wayland, güvenli yapısı gereği VNC gibi teknolojileri desteklemek için ekstra bir katmana ihtiyaç duyar. X11, başından itibaren _server-client_ mantığı ile yazıldığı için daha pürüssüz bir deneyim sunar.

### Dizgileme

Dizgileme; yani pencerelerin animasyonları, VSync, saydamlıklar, gölgeler gibi özellikler X11'de zorunlu değildir. Wayland'de ise "pencere yöneticisi" mantığı yoktur ve direkt olarak dizgiciler vardır, yani zorunludur.

X11'deki bu isteğe bağlı dizgileme yöntemi, sonradan çalıştırılan dizgicinin tüm piksel bilgisini aktif bir şekilde almasını gerektirdiği için gecikme ortaya çıkarır. Wayland'de ise dizgileme işi pasif bir şekilde yapıldığı için, yani direkt olarak _client_ tarafından dizgiciye bildirilme şeklinde yapıldığı için, gecikme azdır.

### Diğer avantajlar

- **HDR ve renk profili desteği:** Özellikle yeni monitörlerde kullanıcıların aradığı bir özelliktir, Wayland'de desteği vardır.
- **Monitörlerde farklı yenileme oranları:** Örneğin X11 kullanan, 60Hz ve 100Hz iki monitör içeren bir sistemde, iki monitörün de maksimum yenileme oranlarını kullanmak isterseniz VSync gibi dizgileyici özelliklerinden feragat etmeniz gerekir. Wayland'de ise bu tip bir kısıt yoktur, farklı yenileme oranlarına sahip ekranların dizgilemesi doğru bir şekilde yapılır.
- **Monitörlerde farklı kademeli ölçeklendirme:** Wayland'de bir monitörün yakınlaştırma ölçeğinin %110, diğerinin %120 gibi bir değere atanabilme imkanı vardır.
