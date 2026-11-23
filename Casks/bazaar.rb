# This file is auto-updated on stable releases of PapaDanielVi/cafebazaar_cli.
cask "bazaar" do
  version "1.0.1"

  on_macos do
    on_intel do
      sha256 "86fd92759d14cbd2bd967d4116ae63b0ad6efd0b8a41424b642f5065024ea36e"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_amd64.tar.gz",
        verified: "github.com/PapaDanielVi/cafebazaar_cli"
    end
    on_arm do
      sha256 "9d0640969f26131907402ae69f4b402a3b22a58ab267b78eb222bd6a2a625ac3"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_arm64.tar.gz",
        verified: "github.com/PapaDanielVi/cafebazaar_cli"
    end
  end

  on_linux do
    on_intel do
      sha256 "d14f92df9450f9c75643999fbe2c7178f2e06192fd9204b6e8e8d62bad3024aa"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_linux_amd64.tar.gz",
        verified: "github.com/PapaDanielVi/cafebazaar_cli"
    end
    on_arm do
      sha256 "9a21498aad08448559b8417554e3431dbc7aa7718a1f03ab03bab12eedbbd385"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_linux_arm64.tar.gz",
        verified: "github.com/PapaDanielVi/cafebazaar_cli"
    end
  end

  name "bazaar"
  desc "CLI for CafeBazaar Android app publishing, Pishkhan releases, AAB/APK uploads, and user reviews"
  homepage "https://github.com/PapaDanielVi/cafebazaar_cli"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "bazaar"

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/bazaar"]
    end
  end

  # No zap stanza required
end
