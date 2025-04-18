# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Build, manage and test your Auth0 integrations from the command line"
  homepage "https://auth0.github.io/auth0-cli"
  version "1.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.11.0/auth0-cli_1.11.0_Darwin_x86_64.tar.gz"
      sha256 "58845d73ecdb27ab7f5ba267adb6878961c1c088dd55ec740182cf74862e6bff"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.11.0/auth0-cli_1.11.0_Darwin_arm64.tar.gz"
      sha256 "d271fbbae04c1f7f9e5ef57e50a5b2f18eb6141f99933800aab44345cd167d11"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/auth0/auth0-cli/releases/download/v1.11.0/auth0-cli_1.11.0_Linux_x86_64.tar.gz"
        sha256 "d0b6196842236a5fac0d06ba19d044fc3b28112c2a66c092015bbe376425f009"

        def install
          bin.install "auth0"

          (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
          (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
          (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/auth0/auth0-cli/releases/download/v1.11.0/auth0-cli_1.11.0_Linux_arm64.tar.gz"
        sha256 "48f8ed688209718e10ad1667ca38e6bc913e86b31e8307e6785a34aa53f09d04"

        def install
          bin.install "auth0"

          (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
          (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
          (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
        end
      end
    end
  end

  def caveats
    <<~EOS
      Thanks for installing the Auth0 CLI
    EOS
  end
end
