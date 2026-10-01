# Written by scripts/brew-formula in github.com/chrisdmacrae/pail at each release.
# Changes made here are replaced by the next one.
class Pail < Formula
  desc "Put sites and small server apps on a Pail installation at home"
  homepage "https://github.com/chrisdmacrae/pail"

  on_macos do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.7/pail_darwin_arm64.tar.gz"
      sha256 "db35e84f0277df1ab6f4cbc9d86aab66049d20fa355fcdea130ee5a7a6da7af8"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.7/pail_darwin_amd64.tar.gz"
      sha256 "026813cc8b63e061a97d3b6fa4db59406eb6448e4aed7a237bf120b752df0525"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.7/pail_linux_arm64.tar.gz"
      sha256 "c2ba9ecc8cd1f175cf5c7802d27a7741a3cc437f11265d65b34c710ba21f6840"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.7/pail_linux_amd64.tar.gz"
      sha256 "79a75150f4b028b8d8af48eb60bd102c7af483cebbc0a5dce6b2a5e2a6dbb004"
    end
  end

  def install
    bin.install "pail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pail --version")
  end
end
