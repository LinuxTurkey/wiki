---
SPDX-License-Identifier: CC0-1.0
---

# Linux Sisteminde Grafik Arayüzlü Başlatma | Plymouth
Plymouth, canım fedoramın geliştiricilerinin yaptığı açılışı kullanıcı dostu yapan müthiş bir araçtır. İçinde bgrt, spinner gibi bir sürü tema bulunur. 
Çalışma Prensibi ise şöyledir: Grafik sürücülerini initramfs üzerinden başlatır ve initramfs üzerine kendi dosyalarını da koyar. Böylece açılış sağlanırken logları grafik arayüzlü bir tema ile gizleyebilirsiniz.
Bu postumda bunu nasıl yapacağınızı anlatacağım.

**Grub Ayarları**

Bu postumda sadece Grub bootloaderina değineceğim fakat Limine veya Systemd-Boot ta da benzer şeyler yapabilirsiniz.

!!! note
```
Eğer sudo yerine doas veya run0 gibi bir araç kullanıyorsanız sudo yerine run0 veya doas yazın
```

- **/etc/default/grub**  Bu dosyada bazı değerleri değiştireceksiniz. ```sudo nano /etc/default/grub``` komuduyla bir metin editörü kullanarak değiştirebilirsiniz.
```
GRUB_TIMEOUT_STYLE=hidden

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash vt.global_cursor_default=0 loglevel=3 rd.udev.log_priority=3 udev.log_priority=3"

GRUB_TIMEOUT=3 # Bu sistemin açılışını 3 saniye geciktirir varsayılan olarak 5tir. İsterseniz 0'da yapabilirsiniz fakat herhangi bir hata durumunda uğraşmak zorunda kalabilirsiniz.
```

- **/etc/grub.d/10_linux** Bu dosyada bazı değerleri değiştireceksiniz. ```sudo nano /etc/grub.d/10_linux``` komuduyla bir metin editörü kullanarak değiştirebilirsiniz.
```
quiet_boot=1
```


**Plymouth Ayarları**

Sisteminizde Plymouth yüklü değilse yükleyin. Yükleme Komudu dağıtımdan dağıtıma değişebilir. Örnek olarak debianda bu komut ```apt install plymouth plymouth-themes -y```

Plymouth'u indirdikten sonra bir tema seçin. Uefi tabanlı bir sistem kullanıyorsanız(donanım milattan önceden kalmadıysa öyledir genelde) bgrt, Legacy Bios kullanıyorsanız spinner teması öneririm.

```
sudo plymouth-set-default-theme -R spinner

sudo plymouth-set-default-theme -R bgrt 
```

**Son Ayarlar**

Değişikliklerin kaydolması için ```sudo update-grub``` yazmayı unutmayın. Ardından yeniden başlatarak oldu mu olmadı mı kontrol edebilirsiniz.
