---
SPDX-License-Identifier: CC0-1.0
---

# Flatpak ile Web Tarayıcılarını Kullanmayın

Flatpak, yeni nesil bir paket yönetim sistemidir. Güvenlik ve bağımlılık yönetimi için **bubblewrap** kullanır ve kendi izin yönetim sistemi de mevcuttur. Yani normal native paketlerden paketleri sandboxladığı için gözle görülmeyen bir yavaşlama mevcut olsa da yeni nesil ve genel olarak sistem paketlerinden daha iyi bir sisteme sahiptir.

Fakat, konu web tarayıcılarına gelince flatpak sandboxu ve chromium ve firefox sandboxu çakışır. Uygulamanın çalışması için ise sandboxun üstüne kendi modifiye ettikleri bubblewrap sandboxunu atarlar ve chromium ve firefox'un sistem sandboxunu birnevi hiçe sayarlar. Bu nedenle, web tarayıcılarını flatpakle kullanmak genel olarak **güvensiz kabul edilir**.

Bu nedenle, [vivaldi geliştiricileri](https://forum.vivaldi.net/topic/33411/flatpak-support?page=10) ve [chromium geliştiricileri](https://issues.chromium.org/issues/40928753#comment5) yakın zamanda Flatpaki resmi olarak desteklemeyeceklerini söylemiştir.

Bunu çözmenin yolu ise zypak veya doğrudan kaynak koda yamadır.

Not: Epiphany(Gnome Web) sandboxu ile flatpak sandboxu çakışmaz.

Not 2: Bu, chromium ve firefoxu temel alan her tarayıcı için geçerlidir(Brave-Microsoft Edge, Librewolf-Mullvad gibi...)
