cask "konverze" do
  version "0.7.73"
  sha256 "9396ae54b0067da090c336d84e075cfdede0136880ec6a68d74ec1f41387614b"

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
