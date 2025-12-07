# Fedora'da Nvidia Kurulum Rehberi
> **Yazar:** [Kayra](https://www.x.com/QMinun)

Yeni kullanıcılar için Fedora'da Nvidia kurulumu kafa karıştırıcı olabiliyor. Aşağıdaki adımları takip ederek Fedora sisteminize Nvidia sürücülerini kurabilirsiniz.
Öncelikle non-free repolarının aktif olduğundan emin olmanız gerek. Eğer aktif değilse aşağıdaki komutları takip ederek Fedora sisteminizde non-free repoları açabilirsiniz. Bu, Steam gibi oyun istemcilerini kullanmak istiyorsanız ileride işinize yarayabilir.

```bash
sudo dnf install \
https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

Şimdi başarıyla sistemimize non-free repolarını ekledik. Bu aşamadan sonra Nvidia sürücülerini kurmamız gerekiyor.
```
sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda
```

Bunlar Fedora için Nvidia sürücülerimiz. İlk paket Nvidia sürücülerini, ikinci paket ise cuda uyumluluğunu sağlıyor. Monitörümüzün yırtık görüntü vermemesi, doğru hz almamız ve ekran kartını tam verimiyle kullanabilmemiz için her iki paket de son derece önemlidir.

Bu işlemin ardından önyükleme sırasında modüllerin de aktif olabilmesi için dracut üzerinden aktif etmemiz gerekmekte. Normalde paket kurulumundan yaklaşık 1-2 dk sonra kendiliğinden olacaktır ancak buna güvenmemiz her zaman iyi sonuçlanmayabilir.
Daha kesin bir çözüm olarak aşağıdaki adımları takip ediniz.
```bash
sudo akmods --force
sudo dracut --force
```

Bu işlemin de ardından sisteminizi yeniden başlatabilirsiniz. 
