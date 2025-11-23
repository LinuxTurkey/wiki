# Lenovo Laptoplarda Windows Kurmadan BIOS Güncelleme

> **Yazar:** [Semih Yavaş](https://www.reddit.com/user/Sehraill/)

Geçenlerde Lenovo V15 G3 ABA bilgisayarıma BIOS güncellemesi yapmak istedim. Ancak fark ettim ki Lenovo yalnızca Windows için `.exe` dosyası olarak güncelleme yayınlamış. Linux kullanıyorum, dolayısıyla standart yollarla BIOS’u güncellemek mümkün değildi.

Neyse ki Linux altında BIOS’u Windows kurmadan güncellemenin bir yolu var. İşte adım adım rehber:

**1. BIOS .exe Dosyasını İndir**

- Lenovo’nun resmi sitesinden modeline uygun BIOS `.exe` dosyasını indir.

**2. .exe Dosyasını Aç**

- Önce `innoextract` aracını kur.
  - **Fedora:** `sudo dnf install innoextract`
  - **Ubuntu/Debian:** `sudo apt update && sudo apt install innoextract`
- Terminalde çalıştır: `innoextract --extract indirdiğin_bios_dosyasi.exe`
- Bu işlem bir klasör oluşturacak; içindeki `.cap` uzantılı dosya BIOS firmware’idir.

**3. Firmware ID'sini Öğren**

- Terminalde bu komut ile sistemin firmware ID’sini öğren: `sudo fwupdtool get-devices --filter can-verify`

**4. BIOS'u Yükle**

- `.cap` dosyasını firmware ID’ye yükle: `sudo fwupdtool install-blob /path/to/bios.cap <firmware-id>`
- Sistem otomatik olarak yeniden başlatacak ve BIOS güncellenecek. Bu süreçte biraz sabırlı olun lütfen. Sistem birkaç kez yeniden başlayacak. Bilgisayarınızın fanları aniden hızlanıp yavaşlayacak falan.

**5. Kontrol Et**

- Sistem açıldıktan sonra BIOS sürümünü doğrula: `sudo dmidecode -s bios-version`

Son olarak;

- Doğru BIOS sürümünü kullandığınızdan emin olun.
- Güncelleme sırasında bilgisayarın enerji kaybı olmamalı, bu yüzden öncesinde şarja takın.

Bu yöntem, Linux kullanıcıları için Windows’a gerek kalmadan Lenovo BIOS güncellemesi yapmanın güvenli bir yoludur. Uzun uğraşlar sonucu bu yolu buldum.
