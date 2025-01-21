# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Build, manage and test your Auth0 integrations from the command line"
  homepage "https://auth0.github.io/auth0-cli"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.8.0/auth0-cli_1.8.0_Darwin_arm64.tar.gz"
      sha256 "39178670857a1ae0565387b4177d7e8fd1d71ca0637517ada6aa11f16a49264d"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.8.0/auth0-cli_1.8.0_Darwin_x86_64.tar.gz"
      sha256 "4a0e81ae841f71b49c3c872881bee85d6f45f9f9b09a900cb6ff9ce7af711bbe"

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
      url "https://github.com/auth0/auth0-cli/releases/download/v1.8.0/auth0-cli_1.8.0_Linux_arm64.tar.gz"
      sha256 "21893d4eafd25afc3ab6899fd46488b8de9e3521e9202d60ab4717876c80dc3d"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.8.0/auth0-cli_1.8.0_Linux_x86_64.tar.gz"
      sha256 "f0cb3270ea4b3066bb234258a48662f45c2eafa5a6d919d09d67ad42363d6c34"

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
