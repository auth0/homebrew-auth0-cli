# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Supercharge your developer workflow."
  homepage "https://cli.auth0.com"
  version "0.7.1"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.7.1/auth0-cli_0.7.1_Darwin_x86_64.tar.gz"
    sha256 "b0bc56d9190bb9e0bb80474ca8f73d6e35a8ab482595ad6c30d4a52d91722c0e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.7.1/auth0-cli_0.7.1_Darwin_arm64.tar.gz"
    sha256 "cd89d3ccecf992bc31517cd3cfc4256710eeef2a4a755dc50bc38d79512185c7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.7.1/auth0-cli_0.7.1_Linux_x86_64.tar.gz"
    sha256 "423c685e7032a891467e75637a38d8b22b57ff2e8977204314e93f83d52bd157"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/auth0/auth0-cli/releases/download/v0.7.1/auth0-cli_0.7.1_Linux_arm64.tar.gz"
    sha256 "a4731d878fcf4fa106ef774e6800ef0f62d011841a00e576c7c1aee8379ff83b"
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
