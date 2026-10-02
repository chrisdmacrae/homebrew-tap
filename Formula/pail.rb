# Written by scripts/brew-formula in github.com/chrisdmacrae/pail at each release.
# Changes made here are replaced by the next one.
class Pail < Formula
  desc "Put sites and small server apps on a Pail installation at home"
  homepage "https://github.com/chrisdmacrae/pail"

  on_macos do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.11/pail_darwin_arm64.tar.gz"
      sha256 "bdeaa17a7f31a64f2da634f55cc2802a3090ac5c85d6f9bd108d05fdf290ddb2"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.11/pail_darwin_amd64.tar.gz"
      sha256 "fe08fdc309bb7fdcedcb22364a00eaee0969ce365f3f3c2deb395a18e95e96b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.11/pail_linux_arm64.tar.gz"
      sha256 "769a2554ffba4d816c4f0aa8aa3cd50605139e5b6c40246e3d2aa7dedf4c0adc"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.11/pail_linux_amd64.tar.gz"
      sha256 "66f3d71c34bfd3584f8a76706cb700e667f070928d4306f52661be80b753684e"
    end
  end

  def install
    bin.install "pail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pail --version")
  end
end
