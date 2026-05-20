# typed: false
# frozen_string_literal: true

class SecretShift < Formula
  desc "CLI tool for migrating and syncing secrets between providers"
  homepage "https://github.com/PapaDanielVi/secret-shift"
  version "0.1.0"
  license "MIT"

  head "https://github.com/PapaDanielVi/secret-shift.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/PapaDanielVi/secret-shift/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    system "#{bin}/secret-shift", "version"
  end
end
