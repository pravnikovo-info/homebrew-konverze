cask "konverze" do
  version "0.7.83"
  sha256 "b6d01cebe2d444b933523c5bf1d38ed444000ddf84339f70c3f52178e6eb49e1"

  url "https://konverze.pravnikovo.info/konverze-v#{version}-macos-x64.zip"
  name "Konverze"
  desc "Autorizovana konverze dokumentu (I.CA / PostSignum, Czech POINT)"
  homepage "https://konverze.pravnikovo.info"

  # Konverze.app wraps the x86_64 binary (runs under Rosetta on Apple Silicon)
  # — double-click + Dock icon, installed into /Applications.
  app "Konverze.app"

  caveats <<~EOS
    Konverze neni digitalne podepsana (neziskovy nastroj), takze ji macOS pri
    prvnim spusteni zablokuje. Otevrete ji poprve pravym klikem (Ctrl+klik)
    na ikonu -> Otevrit -> potvrdit. Nebo odblokujte prikazem:

      xattr -dr com.apple.quarantine "/Applications/Konverze.app"
  EOS
end
