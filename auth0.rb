# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Auth0 command-line tool to supercharge your developer workflow"
  homepage "https://auth0.github.io/auth0-cli"
  version "0.10.3"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.10.3/auth0-cli_0.10.3_Darwin_x86_64.tar.gz"
      sha256 "9a9fac999be57ad0025371dbd0f8263de6faa585037b3aaf8430fc3272ff590a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.10.3/auth0-cli_0.10.3_Darwin_arm64.tar.gz"
      sha256 "0c50ffef7dbdb35fa1abf40e33406cffc6ff444ed8bcf15a8ec6669db126e95b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.10.3/auth0-cli_0.10.3_Linux_x86_64.tar.gz"
      sha256 "3020d4701fbd1efc8d72224c1052e58678639a9eeed2aa4dded89fea2d43aa02"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.10.3/auth0-cli_0.10.3_Linux_arm64.tar.gz"
      sha256 "7b9bde26167eb16ad0a83577efeac89f10d90c7550459a8e333fc9a7f8a5a370"
    end
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
