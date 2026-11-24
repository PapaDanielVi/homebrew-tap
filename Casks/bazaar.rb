# This file is auto-updated on stable releases of PapaDanielVi/cafebazaar_cli.
cask "bazaar" do
  version "1.1.0"

  on_macos do
    on_arm do
      sha256 "59eb5fa2d0b96adb74a58cf25543f9bbc63a2e221cba85c18f0eb3f1c7dc764e"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "c4536f9836bd98257e3072c30f6625ad6b17c1c9c1e6a57e06ecb52af49d5ac9"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "468095cba7515ab8b8b5549bb1abee527b547b1fcb605de066538d0164c73f5e"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "b39ff7016c7a3bcc4183fb77a1593fdfdace72518b594d42ea18d05c25a7916d"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_linux_amd64.tar.gz"
    end
  end

  name "bazaar"
  desc "CLI for CafeBazaar Android app publishing, releases, and user reviews"
  homepage "https://github.com/PapaDanielVi/cafebazaar_cli"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "bazaar"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/bazaar"], must_succeed: false
    end
  end

  zap :not_required
end
