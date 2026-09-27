Basitçe Linux'ta bir Windows oyununu çalıştırmak için gereken üç şey vardır:
1) Kurulu oyun dosyaları ve oyunu başlatmaya yarayan **.exe dosyası**
2) **Proton**: Windows çağrılarını Linux ile uyumlu çağrılara çeviren bir ara katmandır. Eski oyunlarda eski sürümde proton gerekebilir.
3) **Prefix** (Wine öneki/ortamı): Windows dosya sistemini taklit edecek boş bir klasör (Daha sonradan farklı oyunlar için de aynı konum kullanılabilir. İlk kurulumda boş olmalıdır.)

## Oyunu nasıl kurabiliriz?

Sisteminizde `wine` ve `winetricks` paketleri yoksa bunların kurulumunu yapıp doğrudan setup.exe dosyasına çift tıkladığınızda muhtemelen çalışacaktır.

Yine de alternatif yöntem olarak aşağıda belirtilen oyun yöneticilerini kullanabilirsiniz. Özellikle Heroic Games Launcher'da bu işlem biraz daha kolaydır.

## Proton yöneticisi 

Proton versiyonlarını kolayca yönetmek, güncellemek için *ProtonPlus* programını kullanabilirsiniz. 

En sorunsuz deneyim için ProtonGE veya Proton-CachyOS versiyonları önerilir. İndirme butonuna basıp indirdiğinizde Steam'in uyumluluk klasörüne otomatik olarak özel proton sürümü inecektir. 

[Protondb](https://www.protondb.com/) websitesinden oynayacağınız oyunun hangi sürüm ile çalıştığını kullanıcı yorumlarından kontrol edebilirsiniz. Önce Proton Experimental, ProtonGE Latest gibi en son sürümü deneyin, çalışmadığı takdirde protondb'de önerilen eski sürümler varsa bunları yükleyip test edebilirsiniz.

## Prefix nedir?

Windows ortamını taklit eden herhangi bir klasördür. Sizin bir şey yapmanıza gerek olmaz, otomatik olarak proton bu klasörü doldurur. Oyunla ilgili ayarlar da bu klasör altında depolanır. Her oyun için ayrı prefix oluşturmak kararlılık açısından daha iyi olsa bile oyunlar biriktikçe sistemde gereksiz disk alanı kaplayabilir. Bu yüzden boş bir prefix klasörü oluşturup bütün oyunları oraya yönlendirmekte fayda var. Örneğin ~/Belgeler/prefix gibi bir klasör oluşturup oyun yöneticisinde her oyun için bu klasörü gösterebilirsiniz.

Steam oyunları ~/.local/share/Steam/steamapps/compatdata klasörü altında farklı oyunların steamid'si ile oluşturulan prefix'ler vardır. Oyunla ilgili kayıt dosyalarına erişmeye çalışırken burayı kullanabilirsiniz.

Oyunu Windows ortamını taklit ediyor diye prefix'in içine kurmak zorunda değilsiniz. İstediğiniz bir konuma kurabilirsiniz. Oyun yöneticisinden zaten .exe dosyasını seçeceksiniz.

## Oyun yöneticileri

Başta bahsettiğimiz oyun dosyaları+proton+prefix'i hızlıca bir araya getirip oyununuzu başlat menüsüne ekleyip oynamaya başlatmak için farklı oyun yöneticileri mevcuttur. *Steam, Heroic Games Launcher, Faugus, Lutris* bunlara örnek olabilir.
### Steam 
- Steam arayüzünden sol alttan *Oyun Ekle* tuşuna basıp *Steam dışı oyun ekle* seçeneğiyle açılan ekrandan *Göz at...* seçeneğiyle oyunun başlatma .exe dosyasını bulup *Seçili programları ekle* seçeneğine tıklayın.
- Oyun listesinin en altına gelen oyuna sağ tıklayıp *Özellikler* seçeneğine tıklayın. Açılan ekrandan *Uyumluluk* sekmesine tıklayıp *Belirli bir Steam Play uyumluluk aracının kullanılmasını zorla* seçeneğini aktifleştirip alt kısımdan Proton versiyonu seçin.
- İşiniz bittiğinde Steam üzerinden oyunu çalıştırabilirsiniz. 
- Sağ tıklayıp *Yönet>Masaüstüne kısayol ekle* seçeneğiyle kısayol oluşturabilirsiniz.

### Heroic Games Launcher
- Steam dışındaki Epic, GOG, Amazon oyunlarını da yönetebildiğiniz bir oyun yöneticisi olduğu için harici oyunları buradan da ekleyebilirsiniz.
- *OYUN EKLE* seçeneğiyle açılan ekrandan Başlık kısmına oyun ismini yazın.
- Oyunu henüz kurmadıysanız *ÖNCE KURUCUYU ÇALIŞTIRIN* seçeneğiyle setup dosyasından kurulumu yapabilirsiniz.
- Sonrasında *Yürütülebilir Dosyayı Seçin* kısmından oyunun .exe dosyasını ekleyin ve *BİTİR* diyebilirsiniz.
- İsterseniz *Wine ayarlarını göster* seçeneğine tıklayıp Proton versiyonunu veya prefix klasörünü de değiştirebilirsiniz. 
  Prefix klasörünü her oyunda aynı klasör olarak belirtmek diskinizde ciddi yer kazandırabilir. Çünkü her oyun için ayrı ayrı Windows ortamını taklit eden klasörlerin çoğalması istenmez.

### Faugus Launcher
- Doğrudan oyunun .exe dosyasını Faugus arayüzüne sürükleyip bırakınca oyun ekleme kısmı açılmaktadır.
- *Başlık* kısmına oyun ismini yazın
- *Ortam* olarak prefix için istediğiniz klasör konumunuzu belirtin.
- *Proton* versiyonunu seçin. Eğer ProtonPlus kullanmak istemezseniz Faugus kendi kendine proton güncellemesi yapmaktadır, otomatik olarak bunları ayarlar.
- Kısayol kısmından *Uygulama Menüsü* tikini açarsanız menüye ekleyebilirsiniz.

### Lutris
Lutris artık yapay zeka yardımıyla geliştirme yaptığı için Türkçe desteği yer yer problematik olabilmektedir. Yine de oyun ekleme kısmından kimi oyunlar için hazır scriptler barındırdığı için kullanılabilir.

- Sol üstten + tuşuyla *Yerel Olarak Yüklenmiş Bir Oyun Ekle* seçeneğine basın 
- Açılan ekranda *İsim* kısmına oyun ismini yazın.
- *Oynatıcı* kısmından *Wine*'ı seçin
- Yukarından *Oyun Seçenekleri* sekmesine gelip Yürütülebilir kısmından .exe dosyasını seçin.
- *Wine öneki* (prefix) kısmından ortam klasörünü belirtin
- *Oynatıcı Seçenekleri* sekmesinden Wine sürümü olarak Proton sürümünü seçin.
- İsterseniz *Sistem seçenekleri* kısmından MangoHUD veya Feral Gamemode seçeneklerini açabilirsiniz.
- En son *Kaydet* diyerek oyunu ekleyebilirsiniz.
