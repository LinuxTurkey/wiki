# Basit Komut Satırı Kullanımı

> Komut satırı linux kullanan herkesin bilmesi gereken en önemli hususlardan birtanesidir.
> Bu dosyada en fazla kullanılan ve teknik bilgi gerektirmeyen temellerden bahsedilecektir.

## Komut Satırı Nedir?

[Windows](https://en.wikipedia.org/wiki/Microsoft_Windows) işletim sisteminden gelen çoğu Türk'ün çocukluğundan beri hayatında olan o *komut satırı* aslında bizim bir tür kabuk (shell) arayüzüdür.

Kabuk, Linux ve Unix kullanıcılarının işletim sistemlerini komut satırı arayüzleriyle kontrol etmelerini sağlayan komut satırı yorumlayıcısı olarak adlandırılan bir bilgisayar programı türüdür. Kabuklar kullanıcıların işletim sistemleriyle verimli ve doğrudan iletişim kurmalarını sağlar.

Bu dosyada kabuk komuları şu iki şekilde hitap edilecektir.

1. `pwd`, `cd`, `chsh` satır içinde iken

```bash
ls -lah
```

> NOT: Eğer bir kod betiği ile karıştırılma ihtimali varsa yazılan sözdiziminin (syntax) başında 2 tane > işareti kullanlıcaktır
>
> ```bash
> >> ls -lah
> ```
>
> gibi.

Kabuk komut dosyası oluşturma, otomasyon kurmanın en basit yollarından biridir. Linux veya Unix komutlarını kullanan kabuk komut dosyası, veri bilimcilere, DevOps ve TechOps çalışanlarına komutları tekrarlamak için koşullu ve döngü kontrol yapıları sağlar.

> Örnek:
>
> ```bash
> ls -lah | grep .conf
> ````
>
> bir dosyadaki bütün dosyaları (gizli olsun olmasın) veren ve sadece içeriğinde *.conf* geçen dosları
> verir.

Kabuk komut dosyaları her zaman aynı adla anılmaz. Sh, Bash (en yaygın olanı), csh ve tesh birer kabuk betiğidir. IBM'in VM işletim sisteminde bunlara EXEC adı verilirken; DOS'ta kabuk komut dosyalarına toplu iş dosyaları denir.

### Dosya argümanları ve ARGV

```bash
>> ./dosya.out "Merhaba" "Dünya" 
        0.         1.      2. 
```

Yukarıda gördüğünüz betikte *1.* ve *2.* ile işaretlenmiş olan kısımlara dosya argümanı deriz ve bu tarz argümanları eğer kendi yazdığınız programlarda kullanmak istiyorsanız kullandığınız dilin (genellikle) ya argparse özelliğini yada paketini kullanırsınız ve ya dilinizin sizin için sağladığı `argv` ve `argc` değişkenlerini kullanırsınız, bu genellikle bu şekilde gözükür

```c
// C Dili
// Dosya Adı : Test.c

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    printf("siz %d kadar argüman girdiniz:\n", argc);
    printf("girilen argümanlar\n");
 
    for (int i = 0; i < argc; i++) {
        printf("%d\t%s\n",i, argv[i]);
    }
    return 0;
}
```

```bash
gcc Test.c -o Test.out && ./Test.out "Merhaba" "Dünya"
```

ya da

```python
# Python Dili
import sys

print(f"siz {len(sys.argv)} kadar argüman girdiniz")
print(f"girilen argümanlar")
for i, arg in enumerate(sys.argv):
    print(i,"\t", arg)
```

bu dosyanın amacı dillerin nasıl çalıştığını anlatmak olmadığından daha derine girimiyecektir. Ancak bu kodları çalıştırırsanız şu sonucu alıcaksınız (*formatlama sistemden sisteme değişebilir*)

```bash
>> ./a.out "Merhaba" "Dünya"
siz 3 kadar argüman girdiniz: # argc = 3
girilen argümanlar
0       ./a.out # argv[0]
1       Merhaba # argv[1]
2       Dünya # argv[2]
```

## Basit komutlar

| Komut    | Açıklama                                                                     | Argümanlar                                                                                                          |
| -------- | ---------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `./`     | Bulunduğunuz dizindeki bir dosyayı çalıştırır.                               | Genellikle dosya adı veya yol belirtilebilir. Örneğin: `./script.sh`                                                |
| `ls`     | Bulunduğunuz dizindeki dosya ve dizinleri listeler.                          | Genellikle seçeneklerle kullanılır, ancak temel olarak dizin adları belirtilir. Örneğin: `ls -l`, `ls my_directory` |
| `cd`     | Dizin değiştirir.                                                            | Yeni dizin adı veya yol belirtilir. Örneğin: `cd my_directory`, `cd /path/to/directory`                             |
| `pwd`    | Çalışma dizinini yazdırır.                                                   | Genellikle ek argüman almaz.                                                                                        |
| `mkdir`  | Yeni bir dizin oluşturur.                                                    | Yeni dizin adı belirtilir. Örneğin: `mkdir new_directory`                                                           |
| `rm`     | Dosyaları siler.                                                             | Silinecek dosya adları belirtilir. Örneğin: `rm file1.txt file2.txt`                                                |
| `rmdir`  | Boş dizinleri siler.                                                         | Silinecek dizin adı belirtilir. Örneğin: `rmdir empty_directory`                                                    |
| `cp`     | Dosyaları kopyalar.                                                          | Kaynak dosya adı ve hedef dosya adı belirtilir. Örneğin: `cp source.txt destination.txt`                            |
| `mv`     | Dosyaları taşır veya yeniden adlandırır.                                     | Eski dosya adı ve yeni dosya adı belirtilir. Örneğin: `mv old_name.txt new_name.txt`                                |
| `cat`    | Dosyanın içeriğini görüntüler.                                               | Görüntülenecek dosya adı belirtilir. Örneğin: `cat file.txt`                                                        |
| `touch`  | Boş bir dosya oluşturur veya mevcut bir dosyanın zaman damgasını değiştirir. | Oluşturulacak dosya adı belirtilir. Örneğin: `touch new_file.txt`                                                   |
| `grep`   | Belirtilen deseni içeren satırları dosyadan arar.                            | Aranacak desen ve dosya adı belirtilir. Örneğin: `grep "keyword" file.txt`                                          |
| `chmod`  | Dosya izinlerini değiştirir.                                                 | Yeni izinler ve dosya adı belirtilir. Örneğin: `chmod 755 script.sh`                                                |
| `chown`  | Dosyanın sahibini ve/veya grubunu değiştirir.                                | Yeni kullanıcı ve grup adı ile dosya adı belirtilir. Örneğin: `chown user:group file.txt`                           |
| `man`    | Komutların manuel sayfalarını görüntüler.                                    | Görüntülenecek komut adı belirtilir. Örneğin: `man ls`                                                              |
| `sudo`   | Belirtilen komutu süper kullanıcı (root) olarak çalıştırır.                  | Çalıştırılacak komut adı belirtilir. Örneğin: `sudo apt-get update`                                                 |
| `info`   | Belirtilen komut hakkında ek bilgi görüntüler.                               | Görüntülenecek komut adı belirtilir. Örneğin: `info ls`                                                             |
| `whoami` | Geçerli kullanıcı adını görüntüler.                                          | Genellikle ek argüman almaz.                                                                                        |
| `which`  | Belirtilen komutun tam yolunu görüntüler.                                    | Görüntülenecek komut adı belirtilir. Örneğin: `which ls`                                                            |
| `echo`   | Belirtilen metni standart çıktıya yazdırır.                                  | Yazdırılacak metin belirtilir. Örneğin: `echo "Hello, World!"`                                                      |
| `vi`     | Vim metin düzenleyicisini başlatır.                                          | Düzenlenecek dosyanın adı belirtilir. Örneğin: `vi file.txt`                                                        |

### Bazı Komutlar Üzerine

- ls (List Directory Contents):
  - ls komutu, mevcut dizindeki dosya ve dizinleri listelemek için kullanılır.
  - Genellikle seçeneklerle kullanılır. Örneğin:
        - ls -l: Dosyaları ayrıntılı olarak listeler.
        - ls -a: Gizli dosyaları da listeler.
        - ls -lh: Boyutları insan tarafından okunabilir formatta listeler.
  - > genellikle bir "config" dosyasında (`.bashrc`,`.zshrc`...) l, ll gibi özel *aliaslara* sahiplerdir.
    > Bu `l` komutunun `ls -lah` ile eşdeğer olmasını sağlayabilir

- cd (Change Directory):
    -cd komutu, çalışma dizinini değiştirmek için kullanılır.
    -Yeni dizin adı veya yol belirtilir. Örneğin:
      - `cd my_directory:` "my_directory" adlı dizine geçer.
      - `cd /path/to/directory`: Belirtilen yola doğrudan geçer.
      - > NOT: `cd ~` sizi `/home/USR/`'a götürür.

- cp (Copy):
  - cp komutu, bir dosyayı başka bir dosyaya veya dizine kopyalamak için kullanılır.
    - Kaynak dosya adı ve hedef dosya adı belirtilir. Örneğin:
      - `cp source.txt destination.txt`: "source.txt" dosyasını "destination.txt" dosyasına kopyalar.

- mv (Move):
  - mv komutu, bir dosyayı başka bir konuma taşımak veya yeniden adlandırmak için kullanılır.
  - Eski dosya adı/yeri ve yeni dosya adı/yeri belirtilir. Örneğin:
    - `mv old_name.txt new_name.txt`: "old_name.txt" dosyasını "new_name.txt" olarak yeniden adlandırır.
  - Bir dosayı a noktasından b noktasına götürür
    - `mv önemli_dosya.md çok_gizli_dosyalar/önemli_dosya.md`: önemli_dosya.md dosyasını çok_gizli_dosyalar klasörünün içine atar
  - Bu komutu ikisi için de aynı anda kullanabilirsiniz!
    - `mv önemli_dosya.md çok_gizli_dosyalar/lozan_antlasmasi.md`: önemli_dosya.md dosyasını çok_gizli_dosyalar klasörünün içine atar ve ismini lozan_antlasmasi.md diye değiştirir

- cat (Concatenate):
  - cat komutu, bir veya daha fazla dosyanın içeriğini birleştirip görüntülemek için kullanılır.
  - Görüntülenecek dosya adları belirtilir. Örneğin:
    - `cat file.txt`: "file.txt" dosyasının içeriğini görüntüler.

- sudo (Superuser Do):
  - sudo komutu, belirtilen komutu süper kullanıcı (root) olarak çalıştırmak için kullanılır.
  - Çalıştırılacak komut adı belirtilir. Örneğin:
        `sudo apt-get update`: "apt-get update" komutunu root olarak çalıştırır, böylece paket veritabanını günceller.

- rm (Dosyaları veya Dizinleri Kaldır):
  - rm komutu dosyaları veya dizinleri kaldırmak için kullanılır.
  - Dosyaları kaldırırken, silmek istediğiniz dosyaların adlarını belirtmeniz yeterlidir.
  - Örneğin:
    - rm file1.txt file2.txt: file1.txt ve file2.txt dosyalarını siler.
  - Dizinleri kaldırırken, dizini ve içeriğini **özyinelemeli** olarak kaldırmak için genellikle -r seçeneğini kullanırsınız. (rmdir yerine kullanılır)
  - Örnek:
    - `rm -r directory_name`: directory_name adlı dizini ve tüm içeriğini siler.
    >**ÇOK ÖNEMLİ NOT!!!**
    >Dosyaları ve dizinleri kalıcı olarak sildiğinden ve silindikten sonra kurtarmanın kolay bir yolu olmadığından rm komutu kullanılırken dikkatli olunmalıdır. Komutu çalıştırmadan önce hangi dosya ve dizinleri sildiğinizi iki kez kontrol etmek iyi bir uygulamadır. Ek olarak, bazı kullanıcılar etkileşimli silme işlemini etkinleştirmek için `rm -i` gibi takma adlar ayarlayarak her dosyayı silmeden önce kullanıcıdan onay ister.

- grep
  - grep komutu metin dosyalarında kalıp aramak için kullanılır.
  - Argüman olarak bir kalıp kabul eder ve belirtilen dosya veya dosyalarda bu kalıbı arar.
  - Bir eşleşme bulunursa, grep eşleşen kalıbı içeren satırı yazdırır.
  - Örnek:
    - `grep "desen" dosya.txt`: file.txt dosyasında belirtilen deseni arar ve bu deseni içeren tüm satırları yazdırır.
  - grep ayrıca aramayı özelleştirmek için çeşitli seçeneklerle birlikte kullanılabilir:
        1. -i seçeneği: Büyük/küçük harfe duyarlı olmayan bir arama gerçekleştirir.
        1. -v seçeneği: Eşleşmeyi iptal eder, yani belirtilen kalıbı içermeyen satırları görüntüler.
        1. -n seçeneği: Eşleşen satırlarla birlikte satır numaralarını yazdırır.
        1. -r seçeneği: Dizinler arasında özyinelemeli arama yapar.
  - Örnek:
        1. `grep -i "hata" logfile.txt`: Logfile.txt dosyasında büyük/küçük harf ayrımı yapmadan "error" kelimesini arar.
        1. `grep -n "pattern" file.txt`: file.txt dosyasındaki kalıbı arar ve eşleşen satırlarla birlikte satır numaralarını yazdırır.
  - grep metin işleme için güçlü bir araçtır ve genellikle metin verilerini filtrelemek ve işlemek için diğer komutlarla birlikte kullanılır. Buna *Piping* denir. Bunun en gündelik örneklerden biri olan örneğini ls komutunda görürüz.
    - `ls -lah | grep .conf`: bir dizedeki dosyaları insan'a hitab eden bir biçimde izinleri göstererek yazar ancak o dosyaların içinde .conf kelimesi bulunmak zorunda. Mesela `.config`, `my.config`, `conf.conf` dosyaları burada gözükür.

**Pipelining Operatörleri:**

Linux gibi Unix benzeri sistemlerde Pipelining operatörleri, birden fazla komutu birbirine bağlamak için kullanılan sembollerdir ve bir komutun çıktısının diğerine girdi olarak hizmet etmesini sağlar. Karmaşık veri işleme görevleri için güçlü ve verimli komut dizilerinin oluşturulmasını kolaylaştırırlar.

- **| (Boru):**
  - Boru operatörü (`|`) bir komutun standart çıktısını (stdout) başka bir komutun standart girdisine (stdin) yönlendirir.
  - Bir komutun çıktısının bir sonraki komutun girdisi haline geldiği komutların zincirlemesine izin verir.
  - Örnek:

    ```bash
    komut1 | komut2
    ```

  - Bu, `command1` çıktısını `command2`ye girdi olarak gönderecektir.

- **> (Yeniden Yönlendirme):**
  - Yeniden yönlendirme operatörü (`>`), bir komutun standart çıktısını bir dosyaya yönlendirmek için kullanılır ve dosya zaten mevcutsa içeriğinin üzerine yazar.
  - Dosya mevcut değilse yeni bir dosya oluşturmak için de kullanılabilir.
  - Örnek:

    ```bash
    komut > output.txt
    ```

  - Bu, `command` çıktısını `output.txt` adlı bir dosyaya yönlendirecektir.

- **>> (Ekleme):**
  - Ekleme işleci (`>>`), bir komutun standart çıktısını, içeriğinin üzerine yazmadan bir dosyaya eklemek için kullanılır.
  - Eğer dosya mevcut değilse, oluşturulacaktır.
  - Örnek:

    ```bash
    command >> output.txt
    ```

  - Bu, `command` çıktısını `output.txt` dosyasının sonuna ekleyecektir.

- **< (Girdi Yönlendirme):**
  - Girdi yönlendirme operatörü (`<`), bir dosyanın içeriğini bir komutun standart girdisine yönlendirmek için kullanılır.
  - Bir komutun girdiyi klavye yerine bir dosyadan okumasını sağlar.
  - Örnek:

    ```bash
    command < input.txt
    ```

  - Bu, `input.txt` içeriğini `command` öğesine girdi olarak gönderecektir.

Pipelining operatörleri, güçlü komut satırı iş akışları oluşturmak, verimli veri işleme ve manipülasyon sağlamak için gereklidir. Metin işlemeden sistem yönetimine kadar çok çeşitli görevler için Unix benzeri işletim sistemlerinin çok yönlülüğüne ve etkinliğine katkıda bulunurlar.

## bakınız

man(1), bash(1), chmod(1), chown(1), cp(1), grep(1), ls(1), mkdir(1), mv(1), pwd(1), rm(1), touch(1), info(1)

### Yazar

theBruh141
