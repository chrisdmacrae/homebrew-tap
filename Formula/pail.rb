# Written by scripts/brew-formula in github.com/chrisdmacrae/pail at each release.
# Changes made here are replaced by the next one.
class Pail < Formula
  desc "Put sites and small server apps on a Pail installation at home"
  homepage "https://github.com/chrisdmacrae/pail"

  on_macos do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.5/pail_darwin_arm64.tar.gz"
      sha256 "ce3517a738bea0bf1282e1c3ec7f28cdfdd1f01faed51ad9e7141972bec9fce3"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.5/pail_darwin_amd64.tar.gz"
      sha256 "38e4ebe43faff0d3826bdf9dabd3a00f8426f0ca31c3694e02dfd6d09063c4ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.5/pail_linux_arm64.tar.gz"
      sha256 "7233edd0353268b48303cd6098975b1e8a3e022b757c949955bbaa90cc672531"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.5/pail_linux_amd64.tar.gz"
      sha256 "8c8cdba3c1b06aa02ba428899edc13e47625d98ab471a757150c77b5d6df11c4"
    end
  end

  def install
    bin.install "pail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pail --version")
  end
end
