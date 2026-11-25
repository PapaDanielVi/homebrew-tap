# This file is auto-updated on stable releases of PapaDanielVi/cafebazaar_cli.
cask "bazaar" do
  version "1.2.1"

  on_macos do
    on_arm do
      sha256 "006afc4a4421183943a70dc271ecf1717e13b13bd6268fc28691e7e5e617545b"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "3be03bcc8b6bd800ef7830a428e58ad31a4535ab16822d967b755972e5fd96af"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "7d78435cad4f91ba364c7061a824d025ab2ae21f8ef1f99608599c5f812846d6"
      url "https://github.com/PapaDanielVi/cafebazaar_cli/releases/download/v#{version}/bazaar_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "bc50faab76a54ce74e78d385ae7834898db27c3ca55057fc32d467edd6098998"
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
