# This file is auto-updated on stable releases of PapaDanielVi/cafebazaar_cli.
cask "bazaar" do
  version "1.1.1"

  on_macos do
    on_arm do
      sha256 "6834754c11e6cea2d8170e3c0900b32b739aab3f05afc09f632fd73c4da429c6"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "585d42b0fde332f723cc25a97c36e4afd86e89de8a5c66d731a69b6029c52c1b"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "40229fb67afe1c4cce9ce66297a4cad2cdac863894d5283c85c31b96061d63de"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "b3f30eb2479772f5121c67514b7e316de1c0acff261e0926f6d360f6f201d3c6"
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
