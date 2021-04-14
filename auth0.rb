# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Supercharge your developer workflow."
  homepage "https://cli.auth0.com"
  version "0.4.4"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.4.4/auth0-cli_0.4.4_Darwin_x86_64.tar.gz"
    sha256 "7029ea8b183408cd1b64df0ae88fb9b944189c76c4721d02f20bd4a135e722e3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.4.4/auth0-cli_0.4.4_Linux_x86_64.tar.gz"
    sha256 "0250ca6e1eb022f02ed31d14f5ea2c4c29aee69f66ac6d2e49a25e9173607a95"
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
