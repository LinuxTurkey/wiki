# Fedora Yükseltme Rehberi

> **Yazar:** [Kayra](https://www.x.com/QMinun)

Geçtiğimiz günlerde Fedora 43 tam sürümünü çıkardı. Ancak yeni kullanıcılar, format atmadan 42'den 43'e nasıl geçebileceğinden emin olamayabiliyor.
Fedora 42 işletim sistemi, 12 mayıs 2026 yılında ömrünü dolduracak, bu zamana kadar geçmeniz acil olmasa da yükseltmek için aşağıdaki adımları takip edebilirsiniz.

```bash
sudo dnf system-upgrade download --releasever=43 --allowerasing
sudo dnf system-upgrade reboot
```

İşlemin bitmesi ardından sistem yeniden başlayacak ve sisteminiz artık Fedora 43 olarak başlayacaktır.

!!! note

    Biz bu rehberde 42'den 43'e geçişi göstermiş olsak da, 44 sürümü çıktığı vakit bu durum 44 sürümü için de geçerli olacaktır. Keyfinize bağlı olarak, 42 ömrünün sonuna geldiği vakit 43'e geçmek yerine 44'e de geçebilirsiniz. Bu durumda `--releasever=43` parametresini `--releasever=44` olarak çalıştırabilirsinz
