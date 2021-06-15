# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Supercharge your developer workflow."
  homepage "https://cli.auth0.com"
  version "0.8.1"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.8.1/auth0-cli_0.8.1_Darwin_x86_64.tar.gz"
      sha256 "bc07bb8b879dac9506c0ff07c1dc88e865aa6f5698bb315a400835c35dd52e26"
    end
    if Hardware::CPU.arm?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.8.1/auth0-cli_0.8.1_Darwin_arm64.tar.gz"
      sha256 "83fb8bb6a19f807f5f1a3d8fa34d888dbcd27debe04980cdc421295b085b7530"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.8.1/auth0-cli_0.8.1_Linux_x86_64.tar.gz"
      sha256 "392d7c3ae3acf8dd6d02ba71fd91e2b68489d6d5538c6db44a6bff1547d6922f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.8.1/auth0-cli_0.8.1_Linux_arm64.tar.gz"
      sha256 "efc2cdddd7defa063b84122d1f6d90f182d0bcd0305c872b020612cdb50671a8"
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
