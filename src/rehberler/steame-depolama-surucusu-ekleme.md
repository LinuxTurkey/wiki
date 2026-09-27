# Steam'e Depolama Sürücüsü Nasıl Eklenir?

Linux'ta sabit bir bağlanma noktası oluşturulmayan tüm sürücüler ve depolama aygıtları /run/media/ klasörü altında bir klasöre geçici olarak bağlanmaktadır. Steam varsayılan olarak bu sürücüleri ana sürücü olarak görmez.

Bu yüzden disk ayarlarınızdan bağlanma seçeneklerini ayarlamanız gerekir. 

Bunun için kullanabileceğiniz en iyi araç Gnome Disks (`gnome-disk-utility`) uygulamasıdır. Sisteminizde yüklü değilse yüklemeniz gerekir.

- Uygulamayı başlatın.
- Sol taraftan diskinizi seçin.
- Birimler kısmının altından *Ek bölümlendirme seçenekleri* butonuna basıp *Bağlanma seçeneklerini düzenle* seçeneğine basın. 
- Gelen ekrandan en yukarıdaki *Kullanıcı Oturum Öntanımlıları* butonuna basıp düzenleme seçeneklerini açın.
- *Farklı Tanımla* seçeneğinden *UUID=* ile başlayan seçeneği seçin
- *Bağlanma Noktası* kısmından ise diskinizi ayırt etmeyi sağlayacak bir konum ismi girin. Örneğin */mnt/Oyun-diski* veya */mnt/Yedek* şeklinde.
- *Bağlanma Noktası*'nın bir üzerindeki kısma `noatime,nofail,nosuid,nodev,exec,x-gvfs-show` seçeneklerini yapıştırın.  
	- `noatime` diskin performansını artırmak ve ömrünü uzatmak için,
	- `nofail` diski sistemden çıkarttığınızda sistem açılırken hata vermemesi için,
	- `nosuid` ve `nodev` gerekli yetkiler ve güvenlik için,
	- `exec` disk üzerindeki dosyaları çalıştırabilmek için,
	- `x-gvfs-show` dosya yöneticisinde diskinizin gözükmesi için gerekir

- En sonunda sağ alttan TAMAM tuşuna basıp kaydedin.
- Sistemi yeniden başlatın.
- Steam'i açıp ayarlardan *Depolama* seçeneğine geldiğinizde *Sürücüler* kısmında artık diskiniz "/mnt/Diskim" formatında gözükecektir.
