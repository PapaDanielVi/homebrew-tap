# This file is auto-updated on stable releases of PapaDanielVi/cafebazaar_cli.
cask "bazaar" do
  version "1.3.2"

  on_macos do
    on_arm do
      sha256 "b80b1ac2ce7b3d409ebef26e0b3a33347977d317463372258a452759e06a8062"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "69c4b40e07b18f50cf5dca2a3ecb24bfc3fb27e11d36da7ff3b97c6d06ff8ecc"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "60745d7411cd33a170c45c87c8dd25c408e1de6f482e3eb703fa93743f1875ee"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "8f355983c354603e93815ad4c54a2b2d178b512c2c27f8e0262aebe27ea515f7"
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
