# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Build, manage and test your Auth0 integrations from the command line"
  homepage "https://auth0.github.io/auth0-cli"
  version "1.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.6.1/auth0-cli_1.6.1_Darwin_arm64.tar.gz"
      sha256 "3d3896f8807594ea2ee4de576b83ee7e563d75cba12a10ca993388f0f96e7122"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.6.1/auth0-cli_1.6.1_Darwin_x86_64.tar.gz"
      sha256 "0788530cd3d97ee567735068b2dfe9d70b98d597ff6c89cc513fa2e5b2ad2805"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.6.1/auth0-cli_1.6.1_Linux_arm64.tar.gz"
      sha256 "b7d2b18706d1f84114faebea6f011d427c5347c3c03d6ecc39be54d866549fc7"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.6.1/auth0-cli_1.6.1_Linux_x86_64.tar.gz"
      sha256 "f42897bc94ec7992443bca4e9bb24caf302fe3b94933eaf72d9f65ba457c5cdd"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
  end

  def caveats
    <<~EOS
      Thanks for installing the Auth0 CLI
    EOS
  end
end
