# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Supercharge your developer workflow."
  homepage "https://cli.auth0.com"
  version "0.3.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.3.0/auth0-cli_0.3.0_Darwin_x86_64.tar.gz"
    sha256 "8d2b923ef1cb1a5ad63b49112a5371b79d4ac90b4a9f087b46dcb2a57298e10c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.3.0/auth0-cli_0.3.0_Linux_x86_64.tar.gz"
    sha256 "c485b9035c905ab0dd4ca93351485f3fffb31f0ab228ee00ad5086087990eadd"
  end

  def install
    bin.install "auth0"

    (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
    (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
    (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
  end

  def caveats; <<~EOS
    Thanks for installing Auth0 CLI
  EOS
  end
end
