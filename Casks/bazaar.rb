# This file is auto-updated on stable releases of PapaDanielVi/cafebazaar_cli.
cask "bazaar" do
  version "1.3.0"

  on_macos do
    on_arm do
      sha256 "1e8d22c0790fefe2f2fc5d572705064580abf408a72053622346ad0818136965"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "389146ea4bc7429659d48f1f1521bd3ba4dbc9f469746c89938f86dc41bdeab8"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "c45d4bb84c0024871bc4d0b55160d986021377c5e4f736a2a6dd27c8356df978"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "360fd01d3e51b6d66a2f3a8d2f71516d56231c2dfbd54b51297b096e5da5bd01"
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
