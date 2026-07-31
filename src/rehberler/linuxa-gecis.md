
# Linux'a Geçiş Rehberi

## Beklentilerinizi doğru ayarlayın
Linux bedava Windows değildir. Linux farklı bir işletim sistemidir, dosya sisteminden tutun uygulamaların kurulumu ve yönetimine kadar her şey farklıdır. Bu sebeple öğrenmeye açık olmalısınız.

### Bilinçli, deneyimli ve teknolojiden anlayan biri olmanız Linux'ta hala acemi olduğunuz gerçeğini değiştirmez

*İyi bir şoför olmanız bir tekneyi kullanabileceğiniz anlamına gelmez.*

Windows'ta poweruser olup ileri düzeyde işlemler yapabiliyor olmanız Linux'ta da bunu hemen yapabileceğiniz anlamına gelmiyor. Deneyimsiz bir kullanıcı daha sade bir kullanımı benimsediği için Linux'ta çok iyi bir deneyim yaşayabilirken deneyimli kullanıcılar daha farklı araçlar kullandığı için Linux'ta zorlanabiliyorlar. Çoğu zaman verdikleri tepki tekneye binip ayak pedalları ve vitesi arayıp "bu nasıl bir otomobil böyle!" demek gibi olabiliyor.

Linux'un işleyiş yapısını kavramadan ve önceki alışkanlıklarınızı değiştirmeye açık olmadan onu kullanmaya çalışırsanız hayal kırıklığı yaşayabilirsiniz. Ancak gerekli özeni gösterdiğinizde ve ağırdan aldığınızda zamanla Linux sizin için vazgeçilmez hale gelebilir.

Yaşayacağınız sorunların, eksikliğini duyacağınız bir takım şeylerin illa ki bir yerlerde çözümü vardır. Çözümü arayıp bulmaktan veya yardım istemekten çekinmemelisiniz. Çünkü siz henüz deneyimsiz bir Linux kullanıcısınız ve hâlâ öğrenme sürecindesiniz. Bunu unutmayın!

### Kontrol tamamen sizde, bu da daha fazla sorumluluk demek
Sistemi istediğiniz gibi kişiselleştirebiliyor olmanız aynı şekilde sistem bütünlüğünü de bozabilmeniz anlamına gelebilir. Son kullanıcı odaklı dağıtımların çoğalması ile bu durum büyük ölçüde aşıldıysa da öğrenme sürecinde özenli olmak gerekir. Örneğin yaptığınız her işlemi not almak sonradan yaşayacağınız bir sorun için kurtarıcı olabilir. 

Linux'ta sistem dosyaları doğrudan kullanıcı erişimine kapalı olarak gelir. Bu sebeple her kullanıcının bir şifresi ve belirli yetkileri olmak zorundadır. Sistem dosyalarında yapılacak her bir değişiklik için bu sebeple kullanıcıya düzenli aralıklarla erişim için şifre sorulmaktadır. Bu erişim yeni tip [immutable dağıtımlar](https://linuxturkey.github.io/wiki/rehberler/immutable-dagitimlar.html)da (SteamOS, Bazzite, Fedora Atomic vb.) tümüyle kısıtlanarak sistemde tam kararlılık hedeflenir. Ancak yine de kullanıcı düzeyinde bile olsa Linux yapısı gereği geniş bir özgürlük alanı sunmaktadır. Bu da daha sorumlu yaklaşmayı gerektirir.

## Yazılımlara olan bakış açınızı değiştirmeniz gerekiyor
Windows uygulamalarını Linux'a kurmaya çalışmak çoğu zaman hüsran demektir. Çünkü Windows'a uyumlu olarak yazılmışlardır, Linux'a değil.

Notepad++, foobar2000 gibi basit Windows uygulamaları Wine ile çalıştırılabilirse de daha detaylı ve yüksek işlem gücü isteyen uygulamaları Wine ile çalıştırmak genelde başarısız olur.

#### Linux'ta güncel olarak çalıştırılamayan uygulamalar: 
- Adobe programları
- Autodesk programları
- Solidworks
- Microsoft Office
- Capcut
- Figma 
- Avid Pro Tools, Ableton, FL Studio
- Logitech G HUB, Razer Synapse, Corsair iCUE, ASUS Armoury Crate
- Kernel seviyesi anti-cheat yazılımları ( [areweanticheatyet.com](https://areweanticheatyet.com) üzerinden hangi oyunun uyumlu olup olmadığına bakılabilir)
- Proton ile uyumsuz oyunlar ( [protondb.com](https://protondb.com) üzerinden kontrol edilebilir)

#### Alternatiflere yönelmek:

Linux için özel bir port üretmeyen uygulamalar için [alternativeto.net](https://alternativeto.net) üzerinden alternatiflerine bakabilirsiniz. Ayrıca [flathub.org](https://flathub.org/tr) üzerinden de Linux'ta kullanılabilir olan uygulamaları ve araçları inceleyebilirsiniz. Flathub, flatpak isimli evrensel linux paketlerine ait bir depodur, bu yüzden tüm linux uygulamalarını kapsamasa bile mağazayı incelemek bir fikir verebilir.

Örnek alternatifler ve yararlı olabilecek uygulamalar:

- Adobe Photoshop için **Krita** (?), **GIMP** (?), **Photopea** (web) (?) veya **Affinity** (Resmi linux desteği yok ancak [özel script](https://github.com/ryzendew/Linux-Affinity-Installer) veya [Appimage paketi](https://github.com/ryzendew/Linux-Affinity-Installer/releases/tag/3.2.0) ile wine altyapısıyla kullanılabiliyor), 
- Adobe Illustrator için **Inkscape** veya **Affinity** (wine)
- Clip Studio Paint için **Krita** veya [script ile CSP kurulumu](https://youtu.be/iYhEm32Lr4Y)
- Video düzenleme için **Davinci Resolve** (h264 ve AAC problemini hesaba katarak), **Shotcut** veya **Kdenlive**
- CAD yazılımı için **FreeCAD** (?), **BricsCAD**, **ZWCAD**
- Ofis programları için **OnlyOffice** veya **Libreoffice**
- Airdrop için **LocalSend**
- Yedekleme için **Pika Backup**
- 3D dosyaları görüntülemek için **Exhibit**
- Appimage paketlerini yönetmek için **Gear Lever** veya **AppManager**
- PDF düzenleme için **Okular**, **GNOME Papers**, **PDFArranger**
- Belge tarayıcı olarak **SkanPage**, **SimpleScan** veya **NAPS2**
- Grafik tablet ile görsel notlar  **Xournal++**, **Drawy**
- Oyun yönetimi için **Heroic Games Launcher**, **Faugus**, **Lutris**
- Oyunlarda performans istatistikleri ve ayarları için **Goverlay**
- Ekran kartı fan kontrolü ve overclock için **LACT**
- RGB kontrolü için **OpenRGB** (?)
- Fan kontrolü için **CoolerControl**
- Laptop fan kontrolü için **Tuxedo Control Center** (Monster), **ROG Control Center** (Asus ROG & TUF), **LenovoLegionLinux** (Lenovo), **MControlCenter** (MSI) vs.
- Direksiyon seti kontrolü için **Oversteer**, **Boxflat** (Moza için)
  _Direksiyon seti için özel sürücü kurulumu gerekebilir, bunlar yalnızca kontrol yazılımıdır._

	*(?) Alternatifi olma noktasında tartışmalı olan uygulamalar.*

## Peki hangi Linux?
Linux dağıtımlarını duymuşsunuzdur. Belki de yüzlerce aktif dağıtım bulunmaktadır. Bunlar başta kafa karışıklığı yaratabilir. Ancak burada ilk önce odaklanılması gereken şey dağıtımdan ziyade masaüstü ortamları olmalıdır.

### Masaüstü ortamı tercihi
Masaüstü ortamları kullanıcının işletim sistemiyle etkileşime geçtiği en önemli bileşendir. Bu sebeple yeni bir Linux kullanıcısını doğrudan ilgilendirirler. Bazen standart olarak bazen özelleştirilmiş halleriyle dağıtımlarca sunulur. [KDE Plasma](https://kde.org/tr/plasma-desktop/), [GNOME](https://www.gnome.org/), [COSMIC](https://system76.com/cosmic), [Cinnamon](https://tr.wikipedia.org/wiki/Cinnamon), [Budgie](https://buddiesofbudgie.org/), [XFCE](https://xfce.org/), [LXQt](https://lxqt-project.org/) gibi farklı amaçlara hizmet eden ve farklı felsefelere sahip kullanıcı arayüzleri vardır.

Bunların en geniş geliştirici desteğine sahip olanları KDE ve GNOME'dur. Bu sebeple diğerlerine göre bu ikisi öndedir. O sebeple özel bir durum olmadıkça modern bir donanıma sahipseniz bu iki arayüzden birini tercih etmeniz önerilir.  Eski ve performans açısından başarısız donanımları ayağa kaldırmak için de XFCE ve LXQt öne çıkar.

Linux'ta her konuda olduğu gibi ilk intiba önemlidir. Bu sebeple masaüstü ortamı tercihiniz Linux deneyiminizi belirleyecek ana unsur olduğundan daha kararsız, daha az özellikle gelen masaüstü ortamlarından en azından başlangıçta uzak durmanız önerilir.

### Dağıtım tercihi

[Hangi dağıtımı seçmeliyim?](https://linuxturkey.github.io/wiki/rehberler/hangi_dagitim.html) rehberi ile kullanım amacınıza uygun bir masaüstü ortamına sahip bir dağıtımı tercih edebilirsiniz. Kimi dağıtımlar masaüstü ortamlarının varsayılan yapısıyla değil özelleştirilmiş haliyle sunabilir. Örneğin Ubuntu, Zorin ve PikaOS GNOME'un özelleştirilmiş biçimlerini kullanmaktadır.

## Linux'a geçiş stratejisi

Linux'a günübirlik olarak geçmek gerçekçi değildir. Bu yüzden belirli bir strateji ile ağırdan almanız gerekebilir.

**1. Linux ve Windows'ta ortak çalışabilen uygulamalara geçiş yapın**.<br/>
Bu rehberde de bahsedilen şekilde tek tek size gerekli olan uygulamaların iki sisteme de uyumlu alternatiflerini tercih edip Linux'u kurmadan önce o uygulamaları Windows ortamında kullanıp alışabilirsiniz. 
 
 Örneğin Onlyoffice'i deneyip kendi belgelerinizi bu uygulamada açıp test edebilirsiniz. Photoshop yerine Affinity veya GIMP kullanmayı deneyebilirsiniz.
 
!!! note

    Orta/ileri düzey kullanıcılar için not: İki sistemde çalışan uygulamaların ayar dosyaları da iki sistemde de aynı olabiliyor. Bunları ProgramData ve AppData klasörleri altından bulup linux'ta ~/.config veya ~/.local/share klasörleri altında aynı programa ait klasördeki ayar dosyalarıyla değiştirirseniz sıfırdan ayar yapmakla uğraşmazsınız. Flatpak uygulamalar izole çalıştıkları için bu ayarlar ~/.var/app/ altındadır. Tarayıcı profil ayarları doğrudan ~/ yani kullanıcıya ait ana klasörde gizli klasör olarak da bulunabilir.
	
**2. Dual boot yapmayı öğrenin ve test edin**. <br/>
Dual boot bir sisteme iki işletim sistemi kurmak demektir. Seçtiğiniz dağıtımın kurulum ve kurulum sonrası yapılması gerekenlere dair rehberleri inceleyin ve Linux'u test etmeye başlayın. Eğer yedekte bir diskiniz varsa Linux'u buraya kurmanız önerilir. Aynı diskte farklı bölümlere Windows ve Linux kurulduğunda Windows güncellemelerinin önyükleme bölümüne müdahele etmesi sebebiyle uzun vadede sorunlarla karşılaşabilirsiniz. Teknik olarak sisteminize nasıl Linux kurabileceğinizi şu rehberden öğrenebilirsiniz: [Windows'tan Linux'a Geçiş ve Linux'u Ön İzleme](https://linuxturkey.github.io/wiki/rehberler/windowstan_linuxa.html)

!!! note

	Not: En az **1 hafta** test etmeniz önerilir. Bu süreçte bilgisayarda yapabileceğiniz tüm işlemleri test edin:
	- Yazıcınız varsa yazıcıyı tanıtmak, baskı almak, tarayıcıyı kullanmak isteyebilirsiniz. 
	- Kenarda köşede kalmış sık kullanmadığınız harici aygıtların hepsini denediğinizden emin olun. Örneğin sd kartınızı kart okuyucusunda okutmak, kullanmasanız bile ethernet girişini test etmek veya kablolu kulaklığı jack girişinde denemek gibi. 
	- Overclock/Undervolt işlemi yapacaksanız donanıma göre farklı yaklaşımlar gerekebilir. (Ekran kartı için LACT uygulaması önerilir)

**3. Linux'ta öğrendiğiniz her şeyi not edin.**  <br/>
Karşılaştığınız sorunlara ve uyguladığınız çözümlere dair notlar alın. Sonradan kontrol etmek isteyeceksiniz. 

**4. Windows uygulamalarını Winboat ile kullanmayı deneyin.**  <br/>
Winboat Linux'ta sanal makine olarak Windows kurmanıza yarayan pratik bir araçtır. Kesinlikle ihtiyaç duyduğunuz (ancak çok sık kullanmadığınız) uygulamaları wine ile çalıştıramıyorsanız Winboat ile çalıştırabilirsiniz. Winboat ile uygulamaları pencere olarak açabildiğiniz için sanal makineden ziyade doğal linux uygulaması gibi kullanmanızı sağlar. 

!!! note

	- Video render, 3D render gibi yüksek işlem gücü gerektiren uygulamalar kağıt üzerinde çalıştırılabilir ama performans kaybı olacağı ve GPU passthrough özelliği olmadığı için Winboat ile kullanmak verimsiz olacaktır.
	- Winboat varsayılan olarak sistem başlangıcında açık olarak gelir, bu da sistem kaynaklarını belli ölçüde tüketebilir. Configuration kısmından auto start container özelliğini kapatmak isteyebilirsiniz.

**5. Tümüyle Linux'a geçiş.** <br/>
Eğer dual boot durumuna ihtiyacınızın kalmadığını hissedecek kadar Linux kullandıysanız ve artık sisteme aşina olduysanız geçiş yapabilirsiniz. Bu noktada önceden aldığınız notlar işinize yarayacaktır. 
Eğer ki yedek bir diske linux'u kurduysanız geçiş daha kolay olabilir. İleri düzey bir kullanıcıysanız disk klonlama yaparak ve gerekli bölüm genişletmeleri yapılarak hiçbir ayarı kaybetmeden hızlıca geçiş yapabilirsiniz.


## Linux'ta karşılaşılan sorunları çözme adımları

### Komut yazmayı bilmek zorunda değilsiniz, ancak komut satırını kullanmak zorunda kalabilirsiniz.
Komut satırı çoğu farklı dağıtımda evrensel nitelikte olduğu için sorun çözmek için daha kolay bir yoldur. İnternette bulacağınız rehberlerde bu sebeple komut satırı üzerinden çözümler üretilmesi daha yaygındır. 

Örneğin kişi Fedora KDE dağıtımı kullanıyorsa ağ ayarlarıyla ilgili ayarı yaptığı arayüz, Fedora GNOME kullanan birinin arayüzüyle aynı değildir. Çünkü Linux'ta masaüstü ortamları farklılık gösterebilir. Ancak bu ayarlar komut satırında evrensel geçerlilikte olduğu için çözüm üretmesi daha kolaydır.

Özetle komut satırında komutları tek tek öğrenmeye çalışmak zorunda değilsiniz ancak güvenilir rehberlerdeki komutları uygulayabilirsiniz.

Eğer komutları öğrenmek istiyorsanız. Linux için temel düzeyde **sysadmin** ve **bash scripting** kursları alabilirsiniz. Sanal makine kurarak komutlar üzerinde güvenli şekilde çalışabilirsiniz.

### Donanım problemleri
Linux'ta karşılaşabileceğiniz en kritik sorunlar donanımla ilgili olan sorunlardır. Örneğin internete bağlanamıyorsanız, bluetooth çalışmıyorsa, kulaklığı jack girişine takınca sistem algılamıyorsa, kamera çalışmıyorsa, sd kartınızı sistem okumuyorsa bu bir donanım sorunudur. Donanım uyumsuzluğu yaşadığınız noktada sorunun kaynağı linux çekirdeği ile ilgilidir. Dağıtım değiştirerek sorunu çözmeye çalışmak her zaman işe yaramayabilir. 2-3 sene içinde üretilip satışa sunulmuş modern donanımlarda güncel çekirdeklere (veya güncel çekirdek kullanan dağıtımlara) geçiş yapmak sorunu çözebilir. 

Donanım bilginizi detaylıca özet halinde alabilmek için `inxi -Fxxxz` komutunu kullanabilirsiniz. (`inxi` aracı kurulu değilse dağıtımınızın paket yöneticisi ile kurmanız gerekir) Bu aldığınız özetteki ilgili sorun yaşadığınız cihazın sürücü kodunu (driver) veya model ismini kopyalayıp internette Linux desteği veren websitelerinde aratabilirsiniz.

### Yazılımsal problemler
Yazılımsal problemlerin tespiti daha karmaşık olabilir. Burada daha çok kullandığınız masaüstü ortamı, dağıtım bilgisini belirterek çözüm aramanız daha uygun olabilir. Tek bir yazılımda sorun yaşıyorsanız o yazılım ile ilgili çözümlere bakmanız gerekir. Çok güncel paketler kullanan dağıtımlarda (Arch, CachyOS, OpenSUSE TW gibi) yazılımlarda kararsızlıklar olabilir. Bu sebeple ya paket ve sürüm yönetimini daha iyi öğrenmeyi veya daha stabil tabanlı dağıtımlara (Fedora, Kubuntu, Zorin, Linux Mint gibi) geçmeyi düşünebilirsiniz.

Linux'ta paket yönetimini öğrenmek işinizi büyük ölçüde kolaylaştırır. Sistem paketleri, izole paketler (flatpak, snap, appimage) veya diğer paketleme yöntemlerini (AUR, NixPkgs) bilmek sorun tespitini ve kullanımı kolaylaştırır. Örneğin flatpak gibi izole çalışan paketler düzgün şekilde çalışabilmek için sistemle etkileşime geçmek için özel izinler isteyebilir. Sistem paketi olarak düzgün çalışmayan bir uygulama flatpak olarak sorunsuz çalışabilir, tersi de geçerlidir. Bu durum da alternatif çözümleri çoğaltır.

### Dökümantasyon ve wiki sayfaları
Neredeyse her dağıtımın kendi sorunlarına ürettiği çözümlere dair dökümanlar ve wiki sayfaları mevcuttur. Windows kullanıcıları maalesef Windows için üretilen yardım sayfalarının yetersizliğinden dolayı seneler içerisinde üçüncü kaynaklardan yardım almaya alıştıkları için bu alışkanlıklarını Linux'a da taşımaktadır. Ancak her Linux dağıtımı kendi kullanım kılavuzunu ve sorunlarına dair belgelemelerini yayınlamaktadır ve bu çözümler büyük oranda çalışmaktadır. Dağıtımın kurulumunu yaptıktan sonra çoğu dağıtımın ilk açılış ekranında gelen yönlendirmeleri takip ederek veya websitelerinden ilgili rehberlere bakarak sorunlarınızı çözmeniz önerilir.

### Yapay Zeka desteği almak konusunda...
Dil modellerinden destek almak doğrudan önerilmez. Önce kullandığınız programlarla ilgili dökümantasyonlara, wiki sayfalarına sonra gerçek kullanıcıların rehberlerine ve çözüm sayfalarına, soruna dair bir çözüm yoksa da dağıtımınızın destek forumları, discord veya matrix sunucuları veya r/LinuxTurkey gibi reddit topluluklardan çözüm istemeniz kesinlikle önerilir. 

Deneyimsiz bir kullanıcı olmanızı geçersek yıllardır sektörde olan yazılımlara dair rehberler oluşturan teknoloji editörleri bile basit bir araştırmayla çözebileceği sorunları sırf yapay zekaya başvurarak kısa yoldan çözmeye çalıştıkları için problem yaşamaktadır. "Fedora kurulumundan sonra yapılması gereken işlemler" gibi basit bir aramayla en baştan çözebileceği bir çok sorunu haftalarca çözemeyip bir de üzerine video çekip neden dil modellerine doğrudan başvurmamamız gerektiğini belgelediği örnekler vardır. O yüzden dökümantasyon, wiki ve rehberler gibi birincil kaynaklara bakmanız şiddetle önerilir.

Eğer buradan bir çözüm bulamazsanız, çok karmaşık bir sorun içine düştüyseniz **en son aşama olarak** dil modellerine başvurmayı tercih edebilirsiniz. Ancak dil modelleri yapı olarak yasal gerekçelerle kullanıcı verilerini kendiliğinden istemezler. Bu sebeple "sorunum hakkında benden istediğin bilgiler ve komut çıktıları varsa paylaşabilirim" ve "bu soruna ait güncel verilerle topluluklardan araştırma yaparak çözüm üret" şeklinde bir vurguyla çözüm aramanız gerekir. Bu işlemler kendi sorumluluğunuzdadır. Diğer türlü dil modelleri tamamen varsayımsal veya güncel olmayan bilgiler üzerinden öneriler verir ve önerdiği çözümler sisteminizi bozmakla, verilerinizi kaybetmekle sonuçlanabilir.


## Türkçe Linux içeriklerine katkıda bulunabilirsiniz
Tecrübe kazandıkça karşılaştığınız sorunlara dair aldığınız notlardan içerikler çıkartmanız Türkiye'de Linux topluluğunun genişlemesi için çok önemlidir. Bulacağınız yardım kaynakları büyük oranda İngilizcedir. Bu da yeni kullanıcıyı zorlayabilen bir unsur olabiliyor. Türkçe dilinde önemli bir destek ağının oluşması Linux kullanıcılarının yaygınlaşması için gereklidir. Yapacağınız çözüm içerikleri, rehberler, çevirilerle buna katkı sunabilirsiniz.
