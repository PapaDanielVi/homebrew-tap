# This file is auto-updated on stable releases of PapaDanielVi/cafebazaar_cli.
cask "bazaar" do
  version "1.0.0"

  on_macos do
    on_intel do
      sha256 "cd34d919e72a121b836042366e39c44472136716698f42e2c6585443dfee38f3"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_amd64.tar.gz",
        verified: "github.com/PapaDanielVi/cafebazaar_cli"
    end
    on_arm do
      sha256 "17ddb3e024f28cb93924fc1a55f4041c48c809cfff12e2e3e48931f5b8cd1151"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_arm64.tar.gz",
        verified: "github.com/PapaDanielVi/cafebazaar_cli"
    end
  end

  on_linux do
    on_intel do
      sha256 "fb75e818eaeaec642465a4fa78114597899d136f5419d4fc524c1546758e4f1b"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_linux_amd64.tar.gz",
        verified: "github.com/PapaDanielVi/cafebazaar_cli"
    end
    on_arm do
      sha256 "4ac14473dcb06b4780ccad929b9cc8d799d0f19672e44d206abd17a8a1f683e0"
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
