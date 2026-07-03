# konverze-homebrew — Homebrew tap pro Konverzi

Instalace **[Konverze](https://konverze.pravnikovo.info)** (autorizovaná konverze
dokumentů, I.CA / PostSignum, Czech POINT) na macOS přes [Homebrew](https://brew.sh).

```bash
brew tap pravnikovo-info/konverze https://github.com/pravnikovo-info/konverze-homebrew
brew install --cask konverze
```

> Repo se nejmenuje `homebrew-konverze`, proto je u `brew tap` potřeba explicitní
> URL. Po případném přejmenování na `homebrew-konverze` by stačilo
> `brew tap pravnikovo-info/konverze`.

Po instalaci macOS binárku jednou odblokujte (není placeně podepsaná):
```bash
xattr -dr com.apple.quarantine "$(brew --prefix)/bin/konverze"
```
Cask (`Casks/konverze.rb`) obsahuje jen metadata — verzi, URL na veřejný download
a SHA-256. Aktualizuje se automaticky při každém vydání.
