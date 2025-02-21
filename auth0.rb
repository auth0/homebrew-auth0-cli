# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth0 < Formula
  desc "Build, manage and test your Auth0 integrations from the command line"
  homepage "https://auth0.github.io/auth0-cli"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.9.1/auth0-cli_1.9.1_Darwin_arm64.tar.gz"
      sha256 "32cdab71aebcd02bf19e375e4018a2095c771143695c616b9c3f8994a9ba07ea"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.9.1/auth0-cli_1.9.1_Darwin_x86_64.tar.gz"
      sha256 "0366f26da51b2418742d0760d6c1707304da0fcc2e86b1125e375dffa423c488"

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
      url "https://github.com/auth0/auth0-cli/releases/download/v1.9.1/auth0-cli_1.9.1_Linux_arm64.tar.gz"
      sha256 "b59d4ff6651040f6bb6d3401c057f359a3f8e03991a9444083b1143545c3213f"

      def install
        bin.install "auth0"

        (bash_completion/"auth0").write `#{bin}/auth0 completion bash`
        (fish_completion/"auth0.fish").write `#{bin}/auth0 completion fish`
        (zsh_completion/"_auth0").write `#{bin}/auth0 completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/auth0/auth0-cli/releases/download/v1.9.1/auth0-cli_1.9.1_Linux_x86_64.tar.gz"
      sha256 "79d1cd07ca5a9f8ae3885b2fa611958d5345552601d9269d40df41b7bfc1b894"

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
