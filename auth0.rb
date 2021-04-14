# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Supercharge your developer workflow."
  homepage "https://cli.auth0.com"
  version "0.4.5"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.4.5/auth0-cli_0.4.5_Darwin_x86_64.tar.gz"
    sha256 "47f0571b346a286f1f796e38f9528b4890f675e860934224c15d56b7dd82c109"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.4.5/auth0-cli_0.4.5_Linux_x86_64.tar.gz"
    sha256 "c68375553ee548db6b2d25a16c924b16fb783aa4dcfff87ccc8d21d365a7941d"
  end

  def install
    bin.install "auth0"

    (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
    (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
    (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
  end

  def caveats; <<~EOS
    Thanks for installing the Auth0 CLI
  EOS
  end
end
