# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Auth0 command-line tool to supercharge your developer workflow"
  homepage "https://auth0.github.io/auth0-cli"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.11.2/auth0-cli_0.11.2_Darwin_arm64.tar.gz"
      sha256 "566e2568ad6b9ccf08e8519cfbe02ddb70f31d67231e2a6012c16da91054801b"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.11.2/auth0-cli_0.11.2_Darwin_x86_64.tar.gz"
      sha256 "371af32ca85c2077a75174016a797bf22b03206474961588accbb2575743aa1d"

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
      url "https://github.com/auth0/auth0-cli/releases/download/v0.11.2/auth0-cli_0.11.2_Linux_arm64.tar.gz"
      sha256 "f323d9bf4001fe23fbe2c0d9d1b1e55994b8264a0ef91e844cfec263429cbb2c"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v0.11.2/auth0-cli_0.11.2_Linux_x86_64.tar.gz"
      sha256 "9d22beb28fcd531f6d2b732b0c05065f397e9c2d1f12d54bf6e5a4de6d087b59"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
  end

  def caveats; <<~EOS
    Thanks for installing the Auth0 CLI
  EOS
  end
end
