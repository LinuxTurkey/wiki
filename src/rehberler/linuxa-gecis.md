
# Linux'a Geçiş Rehberi

## Linux'u anlamak
Linux bedava Windows değildir. Linux farklı bir işletim sistemidir, dosya sisteminden tutun uygulamaların kurulumu ve yönetimine kadar her şey farklıdır. Bu sebeple öğrenemeye açık olmalısınız.

## Bilinçli, deneyimli, bilgisayarlardan ve teknolojiden anlayan biri olmanız Linux'ta hala acemi olduğunuz gerçeğini değiştirmez
*İyi bir şoför olmanız bir tekneyi kullanabileceğiniz anlamına gelmez.*

Windows'ta poweruser olup ileri düzeyde işlemler yapabiliyor olmanız Linux'ta da bunu hemen yapabileceğiniz anlamına gelmiyor.

Linux'un işleyiş yapısını kavramadan ve önceki alışkanlıklarınızı değiştirmeye açık olmadan onu kullanmaya çalışırsanız hayal kırıklığı yaşayabilirsiniz.

Yaşayacağınız sorunların, eksikliğini duyacağınız bir takım şeylerin illa ki bir yerlerde çözümü vardır. Çözümü arayıp bulmaktan veya yardım istemekten çekinmemelisiniz. Çünkü siz henüz deneyimsiz bir Linux kullanıcısınız ve hâlâ öğrenme sürecindesiniz. Bunu unutmayın!

## Kontrol tamamen sizde, bu da daha fazla sorumluluk demek
Sistemi istediğiniz gibi kişiselleştirebiliyor olmanız aynı şekilde sistem bütünlüğünü de bozabilmeniz anlamına gelebilir.

Son kullanıcı odaklı dağıtımların çoğalması ile bu durum büyük ölçüde aşıldıysa da öğrenme sürecinde özenli olmak gerekir. Örneğin yaptığınız her işlemi not almak sonradan yaşayacağınız bir sorun için kurtarıcı olabilir. 

## Yazılımlara olan bakış açınızı değiştirmeniz gerekiyor
Windows uygulamalarını Linux'a kurmaya çalışmak çoğu zaman hüsran demektir. Çünkü Windows'a uyumlu olarak yazılmışlardır, Linux'a değil.

Notepad++, foobar2000 gibi basit uygulamalar Wine ile çalıştırılabilir. Ancak detaylı ve yüksek güç isteyen uygulamalar önerilmez.

#### Linux'ta güncel olarak çalıştırılamayan uygulamalar: 
- Adobe programları
- Autodesk programları
- Solidworks
- Microsoft Office
- Capcut
- Figma 
- Kimi ses/müzik prodüksiyonu araçları: Avid Pro Tools, Ableton, FL Studio
- Kimi özel donanım uygulamaları: Logitech G HUB, Razer Synapse, Corsair iCUE, ASUS Armoury Crate
- Kernel seviyesi anti-cheat yazılımları ( [areweanticheatyet.com](https://areweanticheatyet.com) üzerinden hangi oyunun uyumlu olup olmadığına bakılabilir)
- Proton ile uyumsuz oyunlar ( [protondb.com](https://protondb.com) üzerinden kontrol edilebilir)

ANCAK... Bu yazılımların alternatiflerini kullanabilirsiniz. 
[alternativeto.net](https://alternativeto.net) üzerinden kullandığınız uygulamaların linux uyumluluğuna veya alternatiflerine bakabilirsiniz. Ayrıca [flathub.org](https://flathub.org/tr) üzerinden de Linux'ta kullanılabilir olan uygulamaları ve araçları inceleyebilirsiniz.

#### Örnek alternatifler ve faydalı uygulamalar:
- Adobe Photoshop için **Krita** (?), GIMP** (?), **Photopea** (web) (?) veya **Affinity** (Resmi linux desteği yok ancak [özel script](https://github.com/ryzendew/Linux-Affinity-Installer) veya [Appimage paketi](https://github.com/ryzendew/Linux-Affinity-Installer/releases/tag/3.2.0) ile wine altyapısıyla kullanılabiliyor), 
- Adobe Illustrator için **Inkscape** veya **Affinity** (wine)
- Clip Studio Paint için **Krita** veya [script ile CSP kurulumu](https://youtu.be/iYhEm32Lr4Y)
- Video düzenleme için **Davinci Resolve** (h264 ve AAC problemini hesaba katarak), **Shotcut** veya **Kdenlive**
- CAD yazılımı için **FreeCAD** (?)
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
- Laptop fan kontrolü için **Tuxedo Control Center** (Monster laptoplar)
- Direksiyon seti kontrolü için **Oversteer**, **Boxflat** (Moza için)
  _Direksiyon seti için özel sürücü kurulumu gerekebilir, bunlar yalnızca kontrol yazılımıdır._

	*(?) Alternatifi olma noktasında tartışmalı olan uygulamalar.*

## Komut yazmayı bilmek/öğrenmek zorunda değilsiniz,    ancak komut satırını kullanmak zorunda kalabilirsiniz.
Komut satırı çoğu farklı dağıtımda evrensel nitelikte olduğu için sorun çözmek için daha kolay bir yoldur. İnternette bulacağınız rehberlerde bu sebeple komut satırı üzerinden çözümler üretilmesi daha yaygındır. 

Örneğin kişi Fedora KDE dağıtımı kullanıyorsa ağ ayarlarıyla ilgili ayarı yaptığı arayüz, Fedora GNOME kullanan birinin arayüzüyle aynı değildir. Çünkü Linux'ta masaüstü ortamları farklılık gösterebilir. Ancak bu ayarlar komut satırında evrensel geçerlilikte olduğu için çözüm üretmesi daha kolaydır.

Özetle komut satırında komutları tek tek öğrenmeye çalışmak zorunda değilsiniz ancak güvenilir rehberlerdeki komutları uygulayabilirsiniz.

Komutları öğrenmek istiyorsanız. Linux için temel düzeyde **sysadmin** ve **bash scripting** kursları alabilirsiniz. Sanal makine kurarak komutlar üzerinde güvenli şekilde çalışabilirsiniz.

## Peki hangi Linux?
Linux dağıtımlarını duymuşsunuzdur. Belki de yüzlerce aktif dağıtım bulunmaktadır. Bunlar başta kafa karışıklığı yaratabilir. Ancak burada ilk önce odaklanılması gereken şey dağıtımdan ziyade masaüstü ortamları olmalıdır.

### Masaüstü ortamı tercihi
Masaüstü ortamları kullanıcının işletim sistemiyle etkileşime geçtiği en önemli bileşendir. Bu sebeple yeni bir Linux kullanıcısını doğrudan ilgilendirirler. Bazen standart olarak bazen özelleştirilmiş halleriyle dağıtımlarca sunulur. KDE, GNOME, XFCE, LXQt, Cinnamon, Budgie, COSMIC gibi farklı amaçlara hizmet eden ve farklı felsefelere sahip kullanıcı arayüzleri vardır.

Bunların en geniş geliştirici desteğine sahip olanları KDE ve GNOME'dur. Güncel olarak diğerlerine göre her daim bu ikisi öndedir. O sebeple özel bir kullanım durumunuz yoksa, modern bir donanıma sahipseniz bu iki arayüzden birini tercih etmeniz önerilir. 
- KDE Plasma, Windows'tan geçen kullanıcılar için oradaki arayüzü anımsatan bir arayüzle gelir ancak özelleştirme konusunda çok serbest olduğu için istediğiniz şekle sokabilirsiniz. Çok fazla modern özelliğe ve gelişkin bir yazılım ekosistemine sahiptir. Dolphin, Okular, Haruna, Gwenview, Kate, Klipper, Krunner, Spectacle gibi modern araçlarla gelir. SteamOS'in resmi olarak kullandığı arayüzdür, bu sebeple güncel olarak en hızlı geliştirilen masaüstü ortamı denebilir.
- GNOME, sadelik ve minimalizm arayanlar için iyi bir tercihtir. Sadeliğe odaklandığı için KDE'ye göre daha eksik özelliklerle gelir. Bu eksiklikleri üçüncü parti eklentiler yükleyerek çözebilirsiniz. Bu sebeple özelleştirmek için biraz daha tecrübe isteyebilir. Yazılım ekosistemi GNOME'da da geniştir ve modern araçlara sahiptir. Geçmişte aldığı radikal kararlar sebebiyle kendisine tepki olarak doğan birden çok masaüstü ortamı ortaya çıkmıştır.

Cinnamon ve Budgie, GNOME'a tepki olarak doğmuş iki farklı minimal/sade arayüzlerdir. 
- Cinnamon daha çok Linux Mint dağıtımına özeldir, geliştiricileri yine aynı dağıtımın geliştiricileridir. Windows 7'ye benzer bir nostaljik arayüz sunmaktadır.
- Budgie ise önce Solus dağıtımına özel geliştirilmiş sonrasında buddies of budgie ekibine geçmiş bir projedir. Sade, Windows'a benzer bir görünüme sahiptir. 11. sürümünde GNOME'un temel aldığı GTK yerine KDE'nin temel aldığı Qt kütüphanelerine geçmeyi planlamaktadır.

XFCE ve LXQt ise tamamen hafiflik odaklı geliştirilen masaüstü ortamlarıdır. Modern özelliklerden nispeten yoksunlardır ama eski donanımları ayağa kaldırmakta beceriklidirler.

COSMIC, GNOME'a tepki olarak doğan bir başka masaüstü ortamıdır. Geliştirme sürecinin erken evresinde olduğundan kararsızlıklara sahiptir. Ayrıca özellikler olarak oldukça eksiktir ve henüz üçüncü parti eklentileri desteklememektedir. Ancak modern yapısı gereği gelecekte KDE ve GNOME'a rakip olma potansiyeli taşımaktadır.

Not: Linux'ta her konuda olduğu gibi ilk intiba önemlidir. Bu sebeple masaüstü ortamı tercihiniz Linux deneyiminizi belirleyecek ana unsur olduğundan daha kararsız, daha minimal, daha az özellikle gelen arayüzlerden en azından başlangıçta uzak durmanız önerilir.

### Dağıtım tercihi

[Hangi dağıtımı seçmeliyim?](https://linuxturkey.github.io/wiki/rehberler/hangi_dagitim.html) rehberi ile kullanım amacınıza uygun bir masaüstü ortamına sahip bir dağıtımı tercih edebilirsiniz.

## GEÇİŞ STRATEJİSİ BELİRLEYİN!!! 

Linux'a günübirlik olarak geçmek gerçekçi değildir. Bu yüzden belli bir strateji ile ağırdan almanız gerekebilir.

1) Linux ve Windows'ta ortak çalışabilen uygulamalara geçiş yapın
	- Bu rehberde de bahsedilen alternativeto.net üzerinden tek tek size gerekli olan uygulamaların iki sisteme de uyumlu alternatiflerini tercih edip Linux'u kurmadan önce o uygulamaları Windows ortamında kullanıp alışabilirsiniz. (Örneğin Onlyoffice'i deneyip kendi belgelerinizi bu uygulamada açıp test edebilirsiniz. Photoshop yerine Affinity veya GIMP kullanmayı deneyebilirsiniz.)
	- Orta/ileri düzey kullanıcılar için not: İki sistemde çalışan uygulamaların ayar dosyaları da iki sistemde de aynı olabiliyor. Bunları ProgramData ve AppData klasörleri altından bulup linux'ta ~/.config veya ~/.local/share klasörleri altında aynı programa ait klasördeki ayar dosyalarıyla değiştirirseniz sıfırdan ayar yapmakla uğraşmazsınız. Flatpak uygulamalar izole çalıştıkları için bu ayarlar ~/.var/app/ altındadır. Tarayıcı profil ayarları doğrudan ~/ yani kullanıcıya ait ana klasörde gizli klasör olarak da bulunabilir.
2) Dual boot yapmayı öğrenin, kurulum ve kurulum sonrası yapılması gerekenlere dair rehberleri inceleyin ve Linux'u test etmeye başlayın. Eğer yedekte bir diskiniz varsa Linux'u buraya kurmanız önerilir. Aynı diskte farklı bölümlere Windows ve Linux kurulduğunda Windows güncellemelerinin önyükleme bölümüne müdahele etmesi sebebiyle uzun vadede sorunlarla karşılaşabilirsiniz. Teknik olarak sisteminize nasıl Linux kurabileceğinizi şu rehberden öğrenebilirsiniz: [Windows'tan Linux'a Geçiş ve Linux'u Ön İzleme](https://linuxturkey.github.io/wiki/rehberler/windowstan_linuxa.html)
	- Not: En az **1 hafta** test etmeniz önerilir. Bu süreçte bilgisayarda yapabileceğiniz tüm işlemleri test edin:
		- Yazıcınız varsa yazıcıyı tanıtmak, baskı almak, tarayıcıyı kullanmak isteyebilirsiniz. 
		- Overclock/Undervolt işlemi yapacaksanız donanıma göre farklı yaklaşımlar gerekebilir. (Ekran kartı için LACT uygulaması önerilir)
		- Kenarda köşede kalmış sık kullanmadığınız harici aygıtların hepsini denediğinizden emin olun. Örneğin sd kartınızı kart okuyucusunda okutmak, kullanmasanız bile ethernet girişini test etmek veya kablolu kulaklığı jack girişinde denemek gibi. 
3) Linux'ta öğrendiğiniz her şeyi not edin. Karşılaştığınız sorunlara ve uyguladığınız çözümlere dair notlar alın. Sonradan kontrol etmek isteyeceksinizdir.
4) Zaruri olan programları Winboat ile kullanmayı deneyin. Winboat Linux'ta sanal makine olarak Windows kurmanıza yarayan pratik bir araçtır. Kesinlikle ihtiyaç duyduğunuz (genelde sık kullanmadığınız) uygulamaları wine ile çalıştıramıyorsanız Winboat ile çalıştırabilirsiniz. *Video render, 3D render gibi yüksek işlem gücü gerektiren uygulamalar için önerilmez.*
5) Tümüyle Linux'a geçiş. Eğer dual boot durumuna ihtiyacınızın kalmadığını hissedecek kadar Linux kullandıysanız ve artık sisteme aşina olduysanız geçiş yapabilirsiniz. Bu noktada 3. aşamada belirttiğim notlar işinize yarayacaktır. Eğer ki yedek bir diske linux'u kurduysanız geçiş daha kolay olabilir. İleri bir kullanıcıysanız disk klonlama yaparak ve gerekli bölüm genişletmeleri yapılarak hiçbir ayarı kaybetmeden hızlıca geçiş yapabilirsiniz.


## Linux'ta karşılaşılan sorunları çözme adımları
### Donanım problemleri
Linux'ta karşılaşabileceğiniz en kritik sorunlar donanımla ilgili olan sorunlardır. Örneğin internete bağlanamıyorsanız, bluetooth çalışmıyorsa, kulaklığı jack girişine takınca sistem algılamıyorsa, kamera çalışmıyorsa, sd kartınızı sistem okumuyorsa bu bir donanım sorunudur. Donanım uyumsuzluğu yaşadığınız noktada sorunun kaynağı linux çekirdeği ile ilgilidir. Dağıtım değiştirerek sorunu çözmeye çalışmak her zaman işe yaramayabilir. 2-3 sene içinde üretilip satışa sunulmuş modern donanımlarda güncel çekirdeklere (veya güncel çekirdek kullanan dağıtımlara) geçiş yapmak sorunu çözebilir. 

Donanım bilginizi detaylıca özet halinde alabilmek için `inxi -Fxxxz` komutunu kullanabilirsiniz. (`inxi` aracı kurulu değilse dağıtımınızın paket yöneticisi ile kurmanız gerekir) Bu aldığınız özetteki ilgili sorun yaşadığınız cihazın sürücü kodunu (driver) veya model ismini kopyalayıp internette Linux desteği veren websitelerinde aratabilirsiniz.

### Yazılımsal problemler
Yazılımsal problemlerin tespiti daha karmaşık olabilir. Burada daha çok kullandığınız masaüstü ortamı, dağıtım bilgisini belirterek çözüm aramanız daha uygun olabilir. Tek bir yazılımda sorun yaşıyorsanız o yazılım ile ilgili çözümlere bakmanız gerekir. Çok güncel paketler kullanan dağıtımlarda (Arch, CachyOS, OpenSUSE TW gibi) yazılımlarda kararsızlıklar olabilir. Bu sebeple ya paket ve sürüm yönetimini daha iyi öğrenmeyi veya daha stabil tabanlı dağıtımlara (Fedora, Kubuntu, Zorin, Linux Mint gibi) geçmeyi düşünebilirsiniz.

### Dökümantasyon ve wiki sayfaları
Neredeyse her dağıtımın sorunlarına ürettiği çözümlere dair dökümanlar ve wiki sayfaları mevcuttur. Windows kullanıcıları maalesef Windows için üretilen yardım sayfalarının yetersizliğinden dolayı seneler içerisinde üçüncü kaynaklardan yardım almaya alıştıkları için bu alışkanlıklarını Linux'a da taşımaktadır. Ancak her Linux dağıtımı kendi kullanım kılavuzunu ve sorunlarına dair belgelemelerini yayınlamaktadır ve bu çözümler büyük oranda çalışmaktadır. Dağıtımın kurulumunu yaptıktan sonra çoğu dağıtımın ilk açılış ekranında gelen yönlendirmeleri takip ederek veya websitelerinden ilgili rehberlere bakarak sorunlarınızı çözmeniz önerilir.

### Yapay Zeka desteği almak konusunda...
Dil modellerinden destek almak doğrudan önerilmez. Önce kullandığınız programlarla ilgili dökümantasyonlara, wiki sayfalarına sonra gerçek kullanıcıların rehberlerine ve çözüm sayfalarına, soruna dair bir çözüm yoksa da dağıtımınızın destek forumları, discord veya matrix sunucuları veya r/LinuxTurkey gibi reddit topluluklardan çözüm istemeniz kesinlikle önerilir. Deneyimsiz bir kullanıcı olmanızı geçersek yıllardır sektörde olan yazılımlara dair rehberler oluşturan teknoloji editörleri bile basit bir araştırmayla çözebileceği sorunları sırf yapay zekaya başvurarak kısa yoldan çözmeye çalıştıkları için problem yaşamaktadır. "Fedora kurulumundan sonra yapılması gereken işlemler" gibi basit bir aramayla en baştan çözebileceği bir çok sorunu haftalarca çözemeyip bir de üzerine video çekip neden dil modellerine doğrudan başvurmamamız gerektiğini belgelediği örnekler vardır. O yüzden dökümantasyon, wiki ve rehberler gibi birincil kaynaklara bakmanız şiddetle önerilir.

Eğer buradan bir çözüm bulamazsanız, çok karmaşık bir sorun içine düştüyseniz **en son aşama olarak** dil modellerine başvurmayı tercih edebilirsiniz. Ancak dil modelleri yapı olarak yasal gerekçelerle kullanıcı verilerini kendiliğinden istemezler. Bu sebeple "sorunum hakkında benden istediğin bilgiler ve komut çıktıları varsa paylaşabilirim" ve "bu soruna ait güncel verilerle topluluklardan araştırma yaparak çözüm üret" şeklinde bir vurguyla çözüm aramanız gerekir. Bu işlemler kendi sorumluluğunuzdadır. Diğer türlü dil modelleri tamamen varsayımsal veya güncel olmayan bilgiler üzerinden öneriler verir ve önerdiği çözümler sisteminizi bozmakla, verilerinizi kaybetmekle sonuçlanabilir.


## Türkçe Linux içeriklerine destek olun
Tecrübe kazandıkça karşılaştığınız sorunlara dair aldığınız notlardan içerikler çıkartmanız Türkiye'de aktif bir Linux topluluğu oluşabilmesi için çok önemlidir. Bulacağınız yardım kaynakları büyük oranda İngilizce dilindedir. Bu da yeni kullanıcıyı zorlayabilen bir unsur olabiliyor. Türkçe dilinde önemli bir destek ağının oluşması Linux kullanıcılarının yaygınlaşması için gereklidir. Yapacağınız çözüm içerikleri, rehberler, çevirilerle buna katkı sunabilirsiniz.
