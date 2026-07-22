# Hangi dağıtımı seçmeliyim?

Sihirbaz aracılığı ile dağıtım seçimi için: [Distrochooser](https://distrochooser.de/tr)

## Oyun odaklı bir dağıtım arıyorum

Çoğu modern dağıtım, Valve'ın Proton uyumluluk katmanı sayesinde çoğu oyunu desteklemektedir. Ancak çekirdek seviyesinde anti-cheat barındıran (ör. Vanguard) Rekabetçi FPS ve MOBA oyunları hiçbir Linux dağıtımında desteklenmemektedir.

Proton tarafından desteklenen oyunlara göz atmak için: [ProtonDB](https://www.protondb.com/)

### Bazzite

[Bazzite](https://bazzite.gg/), Valve'ın SteamOS 3'üne benzer şekilde tasarlanmış Fedora tabanlı bir Linux dağıtımıdır. Steam Deck de dahil olmak üzere taşınabilir cihazlar ve masaüstü bilgisayarlar için destek sunar. Hem sıradan hem de ileri düzey Linux oyuncuları için sorunsuz bir kullanıma hazır deneyim sunmayı amaçlamaktadır. 

### Nobara

[Nobara Project](https://nobaraproject.org/), Fedora dağıtımının kullanıcı dostu iyileştirmelerle değiştirilmiş bir sürümüdür. Fedora, kurumsal yapısı gereği ve lisans sorunları sebebiyle üçüncü parti veya tescilli yazılımları içeren paketlerle gelmez. Nobara, Fedora’da eksik olan ve oyunlar açısından önemli olan WINE bağımlılıkları, OBS Studio, GStreamer gibi kodek paketleri, NVIDIA sürücüleri ve çeşitli küçük paket düzeltmeleri ile birlikte gelir. NVIDIA kullanıcıları için özel ISO kurulum imajlarına sahiptir.

### PikaOS

[PikaOS](https://wiki.pika-os.com), Debian Sid tabanını kullanıp oyun/performans odaklı olarak özel derlenmiş paketler ve özel bir Linux çekirdeği kullanan bir dağıtımdır. GNOME, KDE, Hyperland, Niri ve Cosmic masaüstü ortamlarını destekler. Masaüstü ortamları yeni kullanıcıların kolay kullanımı için özelleştirilmiş şekilde gelir. Kurulum sonrasındaki yönlendirmeleriyle yeni Linux kullanıcılarının ihtiyaç duyacağı multimedya kodekleri, oyun paketleri, ihtiyaç duyulabilecek programlar gibi temel unsurları hızlıca kurmayı sağlar. Diğer oyun ve performans odaklı dağıtımlara nazaran daha stabil paketler tercih eder. NVIDIA kullanıcıları için özel ISO kurulum imajlarına sahiptir.

!!! note

    - XFS dosya sistemi varsayılan olarak geldiği için ayrı bir disk bölümüne dual boot yapmak zahmetlidir. Tek bir depolama diskine kurulması önerilir. Bölümlendirme yaparak kurmak için ilgili rehberlere göz atabilirsiniz.

## Modern ve stabil bir dağıtım arıyorum

### Fedora

[Fedora Linux](https://fedoraproject.org/) (eski adıyla, Fedora Core), açık kaynak kodlu ve özgür bir Linux dağıtımı. Dünya çapında bir özgür yazılım topluluğu olan Fedora Projesi tarafından geliştirilmekte ve yönetilmekte, Red Hat tarafından desteklenmektedir.

!!! note

    - Fedora, Ubuntu gibi dağıtımlara kıyasla daha temiz ve saf bir GNOME masaüstü ortamı deneyimi sağlar.
    - Çoğu stabil dağıtıma kıyasla yeni yazılımlar daha erken depolara eklenir.
    - Kapalı kaynak Snap yazılım deposu yerine topluluk tarafından çokça tercih edilen Flatpak ile gelir.
    - Lisans sorunları sebebiyle multimedya kodekleri ve donanım kodekleri yüklü gelmez. Bunlar kullanıcı tarafından kurulmak zorundadır.
    - RPM ve Flathub gibi üçüncü parti uygulama depoları aktif şekilde gelmez, kullanıcı tarafından isteğe bağlı olarak aktifleştirilmelidir. 

### Ultramarine Linux
[Ultramarine Linux](https://ultramarine-linux.org), Fedora'nın lisans sorunları sebebiyle eksik gelen özelliklerinin (RPM, flathub, multimedya kodekleri vs.) aktif şekilde sunulduğu, kurulum sonrası doğrudan kullanıma hazır gelen kullanıcı dostu bir dağıtımdır. KDE, GNOME, Budgie, Xfce masaüstü ortamlarını destekler. CachyOS'in sunduğu performans odaklı olarak özelleştirilmiş linux çekirdeğini kurulum esnasında kullanıcıya bir seçenek olarak sunmaktadır. 

### Zorin OS

[Zorin OS](https://zorin.com/os/), Ubuntu tabanlı bir Linux dağıtımıdır ve hem ücretsiz hem de ücretli sürümleri bulunmaktadır. Varsayılan olarak GNOME ve XFCE 4 masaüstü ortamlarını kullanır, ancak masaüstü arayüzü Windows veya macOS'a alışkın kullanıcılar için oldukça özelleştirilmiştir.

!!! note

    - Zorin OS, diğer Linux dağıtımlarından farklı olarak Pro sürümü sunuyor olsa da, ücretsiz sürümü, Pro sürümünden herhangi bir şekilde daha az kabiliyete sahip değildir. Pro sürümü sadece bazı "ek avantajlar" barındırmaktadır.

### Ubuntu

[Ubuntu](https://ubuntu.com/), Linux tabanlı özgür ve ücretsiz bir işletim sistemidir. Bilgisayarlar, sunucular ve akıllı telefonlara yönelik olarak geliştirilmektedir. Ubuntu projesi Linux ve özgür yazılımın, bilgisayar kullanıcılarının günlük yaşamının bir parçası haline gelmesi amacıyla başlatılmış olup ilk kararlı masaüstü sürümü Ekim 2004'te yayınlanmıştır. Ubuntu'nun masaüstü sürümü günümüzde 40 milyonu aşkın kullanıcı sayısıyla dünyanın en yaygın kullanılan masaüstü Linux dağıtımı konumundadır.

!!! note

    - Canonical şirketinin tekelinde olan kapalı kaynak snap paketleri varsayılan olarak kurulu gelir.

### Kubuntu

[Kubuntu](https://kubuntu.org/), KDE masaüstünü kullanan resmi bir Ubuntu varyantıdır. Ubuntu'nun bütün avantajlarını özelleştirilebilir bir KDE masaüstünde size sunar. Arayüz benzerliği açısından Windows'dan gelenlere normal Ubuntu'dan daha mantıklı gelebilir. Discover mağazası sayesinde bütün deb, Snap ve Flatpak(varsayılan olarak yüklü gelmez) paketlerinizi tek grafik arayüzünden kolaylıkla yönetebilirsiniz. 
    

### Bluefin/Aurora

[Bluefin](https://projectbluefin.io/) ve [Aurora](https://getaurora.dev/), Bazzite'ın yapımcıları Universal Blue tarafından yapılan sırayla GNOME ve KDE masaüstünü kullanan Fedora tabanlı dağıtımlardır. Atomic yapısı sayesinde bozması neredeyse imkansızdır. Güncellemeler kolaylıkla yapılır, tek bir komutla da geri çevirilebilir. Bazzite gibi NVIDIA driverları yüklü gelir. Bluefin ve Aurora'da uygulamalar Bazaar mağazısından Flatpak olarak yüklenir, gerekli olduğu durumlarda ujust veya rpm-ostree komutları kullanılarak standart paketlere erişim sağlanılabilir.

### Pop!\_OS

[Pop OS](https://system76.com/pop/) (Pop!\_OS olarak da stilize edilir), Ubuntu tabanlı, ücretsiz ve açık kaynaklı bir Linux dağıtımıdır. Yeni geliştirilmekte olan COSMIC masaüstü ortamı ile birlikte gelir. Dağıtım, Amerikalı Linux bilgisayar üreticisi System76 tarafından geliştirilmiştir.

Pop!\_OS esas olarak System76 tarafından üretilen bilgisayarlara önceden kurulu olarak sunulmak üzere geliştirilmiştir, ancak çoğu bilgisayara da indirip kurmak mümkündür.

!!! note

    - COSMIC arayüzü yeni bir masaüstü ortamı olması nedeniyle hem özellikler bakımından henüz eksiktir hem de kullanım esnasında kararsızlıklar yaşanabilir. Ancak gelecekte GNOME ve KDE gibi temel masaüstü ortamlarına güçlü bir alternatif olma potansiyeli vardır.



## Sürekli güncel ve stabil bir dağıtım arıyorum

### openSUSE

[openSUSE](https://www.opensuse.org/), openSUSE Projesi tarafından geliştirilen ücretsiz ve açık kaynaklı bir Linux dağıtımıdır. İki ana varyasyonda sunulmaktadır: Tumbleweed (yukarı akışlı, güncel paketlere sahip bir sürüm dağıtımı) ve Leap (SUSE Linux Enterprise kaynaklı, kararlı bir sürüm dağıtımı). OpenQA sistemiyle bütün paketleri sunucularda test edildikten sonra kullanıcılara sunulur bu sayede sistemsel kararlılık sağlanır. Ayrıca snapper isimli sistem yedekleme aracı doğrudan OpenSUSE geliştiricileri tarafından geliştirilir. Snapper sayesinde kararsızlık yaratan bir güncelleme sonrasında sistemi geri almak çok basittir. 

### Solus

[Solus]([https://getsol.us/), Masaüstü kullanıcısı hedeflenerek geliştirilen bağımsız ve kullanıcı dostu bir topluluk dağıtımıdır. KDE, GNOME, Budgie ve XFCE masaüstü ortamlarını destekler. Kurulum sonrasında flathub deposu, medya ve donanım kodekleri, zram gibi son kullanıcının ihtiyaç duyacağı temel özellikler hazır bir şekilde gelir. Ayrıca tüm uygulamalar ve güncellemeler mağazadan yönetilebilir. Solus, Pardus/PiSi Linux'tan tanıdığımız PiSi paket yöneticisinin çatallanmış hali olan eopkg paket yöneticisini kullanır. Sistem güncellemeleri haftalık olarak verilir, kritik paketler ise daha uzun süre test edilerek sunulduğundan güncellik ve kararlılık dengesini hedefler. `eopkg history` özelliğiyle güncellemeler geri alınabilir.

## Sürekli güncel bir dağıtım arıyorum

### CachyOS

[CachyOS](https://cachyos.org/), Arch Linux tabanlı bir Linux dağıtımıdır. Hız ve güvenlik optimizasyonlarına odaklanır – varsayılan Linux çekirdeği, BORE (Burst-Oriented Response Enhancer) zamanlayıcısı ile ileri seviyede optimize edilmiştir. Normal Proton'dan daha fazla özelliğe ve optimizasyona sabip olan Proton-CachyOS ile gelir. Masaüstü paketleri ise LTO, x86-64-v3 ve x86-64-v4, Zen 4 optimizasyonları, güvenlik bayrakları ve performans iyileştirmeleri ile derlenmiştir. Sunulan masaüstü ortamları ve pencere yöneticileri arasında KDE, GNOME, Xfce, i3wm, Wayfire, LXQt, OpenBox, Cinnamon, COSMIC, UKUI, LXDE, MATE, Budgie, Qtile, Hyprland ve Sway bulunmaktadır. CachyOS, hem grafiksel hem de komut satırı tabanlı yükleyicilerle birlikte gelir. Snapper özelliğine sahip olduğundan kararsız güncellemeleri geri alma imkânı sunar.

### EndeavourOS

[EndeavourOS](https://endeavouros.com/), Arch Linux tabanından çok farklılaşmayan bir Linux dağıtımıdır. Orta üst teknik bilgili kullanıcılara hitap eder. CachyOS gibi onlarca masaüstü ortamı arasında seçim yapabilir ve Calamares kurucusu sayesinde kolayca sisteminizi kurabilirsiniz. EndeavourOS paket yönetimi varsayılan olarak terminalden yapılır ve "yay" isimli [AUR yardımcısıyla](https://wiki.archlinux.org/title/AUR_helpers) gelir. Eğer Arch kurmak gözünüzde büyük geliyorsa ve daha kolay bir deneme yolu istiyorsanız EndeavourOS deneyebilirsiniz.

### Manjaro

[Manjaro](https://manjaro.org/), Arch Linux tabanlı, kullanıcı dostu ve erişilebilir bir Linux dağıtımıdır. Rolling release modeliyle güncel yazılımlar sunarken, Arch’ın karmaşıklığını azaltmak için grafiksel kurulum araçları ve önceden yapılandırılmış masaüstü ortamları sağlar. Manjaro, geniş donanım desteği ve kapsamlı sürücü paketleriyle özellikle yeni başlayanlar ve günlük kullanım için dağıtım arayan kullanıcılar arasında popülerdir. KDE Plasma, XFCE ve GNOME gibi çeşitli masaüstü seçenekleri mevcuttur.

## Hafif ve stabil bir dağıtım arıyorum

### Linux Mint

[Linux Mint](https://linuxmint.com/), Ubuntu tabanlı, kullanıcı dostu bir Linux dağıtımıdır. Windows’tan geçenler için tasarımı tanıdık gelir; masaüstü ortamı olarak Cinnamon, MATE veya XFCE alternatifleri ile gelir. Kurulumdan sonra neredeyse her şey hazır gelir: medya codec’leri, ofis uygulamaları, sürücüler vs. Stabil, hafif ve “kur ve kullan” tarzı bir sistemdir. Yeni başlayanlar için çok uygundur ama deneyimli kullanıcıyı da yormaz.

### MX Linux

[MX Linux](https://mxlinux.org/), Debian Stable tabanlı bir Linux dağıtımıdır ve antiX’in çekirdek bileşenlerini kullanır. Bunun yanında, MX topluluğu tarafından oluşturulan ya da paketlenen ek yazılımlar da içerir. MX Linux’un geliştirilmesi, antiX ve eski MEPIS topluluklarının ortak çalışmasının bir ürünüdür. Topluluğun belirttiği hedef, "zarif ve verimli masaüstlerini yüksek kararlılık ve sağlam performansla birleştiren bir işletim sistemi ailesi" üretmektir.

## Çok eski bir bilgisayarım var ve oldukça hafif bir dağıtım arıyorum

### antiX

[antiX](https://antixlinux.com/), başlangıçta MEPIS tabanlı olan bir Linux dağıtımıdır. MEPIS'in kendisi de Debian'ın kararlı sürümüne dayanır. antiX, ilk olarak MEPIS'in KDE masaüstü ortamını Fluxbox ve IceWM pencere yöneticileriyle değiştirerek, daha eski ve düşük donanımlı x86 tabanlı sistemler için uygun hale getirilmiştir. Debian'dan farklı olarak, antiX systemd başlatma sistemini kullanmaz; bunun yerine, varsayılan başlatma sistemi olarak SysVinit veya Runit ayarlanmış olan kalıplar sunar.

### Q4OS

[Q4OS](https://q4os.org/), klasik bir kullanıcı arayüzü (Trinity) ve basit araçlar sunar. Google Chrome, VirtualBox ve geliştirici araçları gibi karmaşık üçüncü parti uygulamalar için kararlı API'ler sağlamak üzere tasarlanmış Debian tabanlı bir masaüstü Linux dağıtımıdır. Sistem, çok düşük donanım gereksinimleri nedeniyle sanal bulut ortamları için de çok kullanışlıdır.

### Puppy Linux

[Puppy Linux](https://puppylinux-woof-ce.github.io/), düşük donanım gereksinimi ve kolay kullanımıyla öne çıkan hafif bir Linux dağıtımıdır. Sistem tamamen RAM üzerinden çalışabilir (64-bit ~600 MB, 32-bit ~300 MB), böylece açılıştan sonra kurulum medyasına gerek kalmaz.

İçinde temel uygulamalar ve hafif web tarayıcıları bulunur. Başta Barry Kauler tarafından geliştirilen Puppy, artık topluluk tarafından sürdürülüyor. Woof aracıyla diğer dağıtımların paketlerinden Puppy türevi oluşturulabilir.

### Tiny Core Linux

[Tiny Core Linux (TCL)](http://www.tinycorelinux.net/), BusyBox ve FLTK kullanan, minimum sistemle çalışan son derece hafif bir Linux dağıtımıdır. 11–16 MB boyutundadır ve işlevsellik eklentilerle sağlanır. Baş geliştiricisi, Damn Small Linux'tan tanıdığımız Robert Shingledecker’dır. Açık kaynaklıdır ve GPLv2 lisansı ile dağıtılır.

## "Kendin yap" felsefesinde bir dağıtım arıyorum

### Arch Linux

[Arch Linux](https://wiki.archlinux.org/title/Ana_sayfa), “KISS” (Keep It Simple, Stupid) prensibini benimseyen, tam anlamıyla kullanıcı merkeziyetçi, minimalist bir Linux dağıtımıdır. Amacı, kullanıcıya tam kontrol sağlamak ve sistemi sadece ihtiyaçlarına göre şekillendirme özgürlüğü vermektir. Yani, hazır paketler, GUI’li kurulum sihirbazları vermez — kurarsın, ayarlarsın, yönetirsin. Bu bazılarının “zor”, bazılarının ise “tam özgürlük” dediği bir deneyimdir.

### NixOS

[NixOS](https://nixos.org/), tamamen deklaratif sistem yapılandırması sunan, Nix paket yöneticisi üzerine inşa edilmiş bir Linux dağıtımıdır. Sistem yapılandırması tek bir dosyada tanımlanır ve bu yapılandırma kullanılarak sistem tekrar kurulabilir veya geri alınabilir. Paketler izole edilmiş biçimde yönetilir, bağımlılık çatışmaları minimize edilir ve güncellemeler atomik olarak uygulanır. Bu özellikler, sistemin tutarlılığını ve kararlılığını artırır.

Diğer geleneksel Linux dağıtımlarından farklı olarak, NixOS’ta paket yönetimi ve sistem ayarları merkezi ve tekrarlanabilir bir yapılandırma dosyasıyla kontrol edilir. Bu yaklaşım, sistem yönetiminde deterministik ve yeniden üretilebilir bir deneyim sağlar.

### Debian

[Debian](https://www.debian.org/), kararlılık ve özgür yazılım felsefesini ön planda tutan, uzun süredir geliştirilen popüler bir Linux dağıtımıdır. Geniş bir paket deposuna sahip olup, çok sayıda mimariyi destekler. Paket yönetimi için APT sistemi kullanılır ve genellikle sunucu ortamlarında ve masaüstünde tercih edilir. Debian, yeni başlayanlar için biraz daha sabır gerektirebilir ama sağlam, güvenilir ve geniş topluluk desteği sayesinde uzun vadeli projelerde tercih edilir.

### Void Linux

[Void](https://voidlinux.org/), monolitik Linux çekirdeğine dayanan, bağımsız olarak geliştirilmiş, genel amaçlı bir işletim sistemidir. Kullanıcıların yazılımları hızlı bir şekilde yüklemelerine, güncellemelerine ve kaldırmalarına veya XBPS kaynak paketleri koleksiyonunun yardımıyla kaynaklardan doğrudan yazılım oluşturmalarına olanak tanıyan hibrit bir ikili/kaynak paket yönetim sistemine sahiptir. Dağıtımın diğer özellikleri arasında Raspberry Pi tek kartlı bilgisayarlar (hem armv6 hem de armv7) için destek, günlük güncellemelerle yuvarlanan sürüm modeli ve “runit” adlı yerel init sistemi bulunmaktadır.

## Özel donanımlarım için bir dağıtım arıyorum

### Fedora Asahi Remix

[Fedora Asahi Remix](https://asahilinux.org/fedora/), Apple Silicon cihazların Linux'ta çalışmasını sağlayan Asahi Linux projesinin resmi Fedora tabanlı dağıtımıdır. Dezavantajları(daha kısa batarya ömrü vb.) olsa da size Apple cihazlarda neredeyse çoğu şeyi destekleyen bir Linux ARM masaüstü deneyimi sunar hatta bazı durumlarda MacOS'ten daha hızlıdır. Şuan sadece M1 ve M2 cihazları desteklese de yakın gelecekte M3 desteğinin gelmesi beklenmektedir.

### Adélie Linux

[Adélie Linux](https://www.adelielinux.org/), PowerPC mimarisini desteklemesiyle bilinen bir Linux dağıtımıdır. Özellikle eski PowerPC Maclerde çoğu distro desteği kesmesine rağmen size güncel ve hafif bir Linux masaüstü deneyimi sunar. Paket yöneimini APK paket yöneticisinden yapılır fakat çok bilinen bir dağıtım olmadığı için istediğiniz her paketi bulamayabilirsiniz

### postmarketOS

[postmarketOS](https://postmarketos.org/), Android telefonlar için bir Alpine tabanlı dağıtımdır. Android/iOS ikileminden kurtulmak ve telefonunda masaüstü Linux deneyimi yaşamak isteyenler için idealdir. Plasma Mobile, Phosh, GNOME Mobile, SXMO ve bir sürü mobil Linux masaüstü ortamını destekler. Paket yönetimi olarak APK kullanır ve Waydroid üzerinden Android uygulamaları çalıştırmanıza imkan sunar. Fakat cihaz ve uygulama desteğinin kısıtlı olması sebebiyle herkese önerilmez.
