# Written by scripts/brew-formula in github.com/chrisdmacrae/pail at each release.
# Changes made here are replaced by the next one.
class Pail < Formula
  desc "Put sites and small server apps on a Pail installation at home"
  homepage "https://github.com/chrisdmacrae/pail"

  on_macos do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.2/pail_darwin_arm64.tar.gz"
      sha256 "4b47915992648f6e4a7204987e82895cd7f1504801239ecb7d79227edd61c01a"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.2/pail_darwin_amd64.tar.gz"
      sha256 "21574eeef042f19938cf9329531a0fc2968ced94427664b65bd2e4eb25b6cbf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.2/pail_linux_arm64.tar.gz"
      sha256 "a76b5bddf4b50165b50426ca0f28263999a76b10a21c6d1f250c7b15458eaf2e"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.2/pail_linux_amd64.tar.gz"
      sha256 "1ef553038e1819e10edca8168005f4900d5884392377cb6c6025e12b66ab4b73"
    end
  end

  def install
    bin.install "pail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pail --version")
  end
end
