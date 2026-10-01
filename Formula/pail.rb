# Written by scripts/brew-formula in github.com/chrisdmacrae/pail at each release.
# Changes made here are replaced by the next one.
class Pail < Formula
  desc "Put sites and small server apps on a Pail installation at home"
  homepage "https://github.com/chrisdmacrae/pail"

  on_macos do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.9/pail_darwin_arm64.tar.gz"
      sha256 "fa895f83ec73dade55cc500de6ddd3746bd9583ce1a355b4e7202b1c4f4f7773"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.9/pail_darwin_amd64.tar.gz"
      sha256 "c3d67de03bcb93f5daa09a6b3c2ee3f0a27a327088d1e7d44d306b6d85ddc3b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.9/pail_linux_arm64.tar.gz"
      sha256 "0b824a35cc9ed4c7c862834fd9d203e98651929d5da2a06e77bc853387ca7331"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.9/pail_linux_amd64.tar.gz"
      sha256 "f11640f5b0881138f15ecdbd6ceedeaf43d531db1fc8fde330da3e80224e0c04"
    end
  end

  def install
    bin.install "pail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pail --version")
  end
end
