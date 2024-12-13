# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Build, manage and test your Auth0 integrations from the command line"
  homepage "https://auth0.github.io/auth0-cli"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.7.1/auth0-cli_1.7.1_Darwin_arm64.tar.gz"
      sha256 "caab26869af724975aaeadf1e168285a3e8a9e6b849a66ac0eac57c630bb9538"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.7.1/auth0-cli_1.7.1_Darwin_x86_64.tar.gz"
      sha256 "a5c554272d5990ad9f527dc726b1a2d7a54f2f1ef3faabb18e470870a4d59c3a"

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
      url "https://github.com/auth0/auth0-cli/releases/download/v1.7.1/auth0-cli_1.7.1_Linux_arm64.tar.gz"
      sha256 "3e5f8ec114ccf422896eab07335b94a85d10e48231490b468e9726ee1a227fef"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.7.1/auth0-cli_1.7.1_Linux_x86_64.tar.gz"
      sha256 "420148865cbe7eba7e8f3bc35c129e5c1bad41959ede4fa488ce031357be954d"

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
