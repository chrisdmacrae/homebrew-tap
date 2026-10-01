# Written by scripts/brew-formula in github.com/chrisdmacrae/pail at each release.
# Changes made here are replaced by the next one.
class Pail < Formula
  desc "Put sites and small server apps on a Pail installation at home"
  homepage "https://github.com/chrisdmacrae/pail"

  on_macos do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.8/pail_darwin_arm64.tar.gz"
      sha256 "df93d29aba40887c688f3bd609d36bad5be99e3405936292d2f9d4a36b281476"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.8/pail_darwin_amd64.tar.gz"
      sha256 "132a569926225d6b58f16c2d2c47267509117cdf0a09025505f0c8a69f720069"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.8/pail_linux_arm64.tar.gz"
      sha256 "af9e9295a81a69c4f5fd25cf263c7d1b4c378ccf2da0c8fa253e810eab231001"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.8/pail_linux_amd64.tar.gz"
      sha256 "344c5cf9be7f660b49db429840a4e32a324e2b66183445f0f0cf3aa41f64f3d2"
    end
  end

  def install
    bin.install "pail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pail --version")
  end
end
