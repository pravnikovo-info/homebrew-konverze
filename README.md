# homebrew-konverze — Homebrew tap pro Konverzi

Instalace **[Konverze](https://konverze.pravnikovo.info)** (autorizovaná konverze
dokumentů, I.CA / PostSignum, Czech POINT) na macOS přes [Homebrew](https://brew.sh).

```bash
brew tap pravnikovo-info/konverze
brew install --cask konverze
```

Po instalaci macOS binárku jednou odblokujte (není placeně podepsaná):
```bash
xattr -dr com.apple.quarantine "$(brew --prefix)/bin/konverze"
```

Cask (`Casks/konverze.rb`) obsahuje jen metadata — verzi, URL na veřejný download
a SHA-256. Aktualizuje se automaticky při každém vydání (`release.sh` v hlavním repu).
