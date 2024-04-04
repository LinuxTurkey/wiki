# Linux Jargonu ve bilinmesi gerekenler

## /

Dosya yönetiminde, bu sembol dosya sisteminin kökünü ifade eder ve bir yol listesindeki dizinleri ayırır.

## ~

Dosya yönetiminde bu sembol bir kullanıcının ev dizinini ifade eder.

## \#

Komut isteminde, bu sembol genellikle kullanıcının o anda root olarak oturum açtığını gösterir.

## $

Komut isteminde, bu sembol genellikle kullanıcının o anda sıradan bir kullanıcı olarak oturum açtığını gösterir.

## yönetici (Root)

Kök kullanıcı ya da bu kullanıcının yetkilerini geçici olarak benimseyen kişi için kullanılan başka bir sözcük.

## applet

Daha büyük bir programın parçası olarak çalışan ve ana programı tamamlayan işlevler sunan küçük bir program.

## APT

Gelişmiş Paketleme Aracı. Ubuntu ve Debian'da yazılımın yönetildiği ve yüklendiği temel sistem
Linux sistemleri. apt-get gibi apt ile başlayan kabuk komutları, çeşitli Linux sistemlerinden yeni yazılım yüklemek için kullanılır. Ubuntu altında, _Synaptic_ Paket Yöneticisi programı APT'yi kullanmak için bir GUI yöntemi sağlar.

## kapalı kaynak (Closed Source)

Kaynak kodunun başkalarının görmesi, paylaşması veya değiştirmesi için mevcut olmadığı Açık Kaynak'ın tersi. Ayrıca bakınız
tescilli.

## komut (Command)

Kabukta yazılan ve genellikle sistemin ve/veya sistemin yönetimiyle ilgili belirli bir görevi yerine getiren girdi
dosyaların manipülasyonu.

## copyleft

Bilgisayar programı gibi yaratıcı bir çalışmayı yasal olarak bağlayıcı bir belge kullanarak paylaşma hakkını korumaya yönelik yasal ilke / Lisans. Copyleft ayrıca çalışmanın gelecekteki yinelemelerinin de aynı şekilde kapsanmasını sağlar.

## CUPS

Ortak Unix Yazdırma Sistemi. Unix ve Linux altında yazdırma işlemini gerçekleştirmek için arka planda çalışan bir dizi program. Printer ile haşırneşir olanlar bu sistem ile çok uğraşırlar.

## Bağımlılık (Dependency)

Bir programın çalışması için gereken sistem dosyalarına atıfta bulunmanın bir yolu. Eğer bağımlılıklar
program kurulumu, bir program yüklenmeyi reddedebilir.

> Örnek olarak
>
> ```C
> #include <stdio.h>
>
> int main(void){ 
>    printf("Bağımlılık Kötüdür");
>  return 0;
> }
> ```
>
> Bu program çalışması için stdio.h kütüphanesine bağımlıdır.

## Dizin (Directory)

Genellikle klasör olarak adlandırılan şey için başka bir kelime.

## dağıtım (Distribution)

Linux işletim sistemini oluşturan bir yazılım koleksiyonu; dağıtım olarak da bilinir. Yazılım genellikle derlenir. Bir şirket ya da kuruluş tarafından. Bir dağıtım, aşağıdaki özellikleri sayesinde kurulumu, yönetimi ve kullanımı kolay olacak şekilde tasarlanmıştır
entegre bir bütündür. Örnekler arasında Ubuntu, SUSE Linux, Red Hat ve Debian sayılabilir.

## distro

Dağıtım için kısaltma.

## Firefox

Mozilla Vakfı tarafından üretilen web tarayıcı programı.

## FLOSS

Özgür, Libre ve Açık Kaynak Yazılım. Topluluk içinde tüm yazılım veya teknolojileri tanımlamak için kullanılan bir terimdir, Genel anlamda, Açık Kaynak yazılım ve Özgür Yazılım'ın etik yaklaşımına ve bunun yanı sıra yasal yönergeler verir.

## FOSS

Özgür ve Açık Kaynak Kodlu Yazılım. FLOSS için alternatif bir terim.

## özgür (libre)

Yazılım veya ilgili teknoloji alanlarını tanımlamak için kullanıldığında, "özgür" ifadesi projenin etik kurallara uyduğunu gösterir. GNU Projesi tarafından belirlenen (yasal olmasa da) kurallar. Yazılımın _**parasal**_ anlamda özgür olduğunu göstermez;
anlamı "_Freeware_ "den oldukça farklıdır.

## Özgür Yazılım

“Özgür yazılım”, kullanıcıların özgürlüğüne ve topluluğa _saygı_ duyan yazılım demektir. Kabataslak, kullanıcıların bir yazılımı çalıştırma, kopyalama, dağıtma, inceleme, değiştirme ve geliştirme özgürlüğüne sahip olduğu anlamına gelir. Öyleyse, “özgür yazılım” bir fiyat değil, özgürlük meselesidir. İngilizcedeki "free" kelimesinden kaynaklı olarak, bu kavramı anlamak için, “bedava birayı” değil “ifade özgürlüğünü” düşünmek gerekiyor. Bazı durumlarda, Fransızca ve İspanyolca'dan özgürün karşılığı olarak libre ödünç alınarak “libre” yazılım kavramı da, yazılımın bedelsiz olduğu değil özgür olduğunu kastetmek için kullanılıyor.

Özgür yazılımın kopyalarına sahip olmak için ücret ödemeniz gerekebilir veya kopyaları hiçbir ücret karşılığı olmadan da edinmiş olabilirsiniz. Kopyalara nasıl sahip olduğunuzdan bağımsız olarak, her zaman için yazılımın kopyalama, değiştirme ve hatta kopyalarını satma özgürlüğüne sahipsiniz.

([gnu](https://www.gnu.org/philosophy/free-sw.tr.html)'dan alınmıştır)
