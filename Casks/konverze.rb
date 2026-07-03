cask "konverze" do
  version "0.7.70"
  sha256 "99e96fa6b8989ab00135a4a31441ad4c891676172880c5df41580828fa78f5ca"

  url "https://konverze.pravnikovo.info/konverze-v#{version}-macos-x64.zip"
  name "Konverze"
  desc "Autorizovana konverze dokumentu (I.CA / PostSignum, Czech POINT)"
  homepage "https://konverze.pravnikovo.info"

  # Bare x86_64 Mach-O binary (runs under Rosetta on Apple Silicon).
  binary "konverze"

  caveats <<~EOS
    Konverze neni digitalne podepsana (neziskovy nastroj), takze ji macOS pri
    prvnim spusteni zablokuje. Odblokujte ji jednim prikazem:

      xattr -dr com.apple.quarantine "#{HOMEBREW_PREFIX}/bin/konverze"

    Pote spustte z terminalu:  konverze
  EOS
end
