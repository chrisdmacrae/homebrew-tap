# Written by scripts/brew-formula in github.com/chrisdmacrae/pail at each release.
# Changes made here are replaced by the next one.
class Pail < Formula
  desc "Put sites and small server apps on a Pail installation at home"
  homepage "https://github.com/chrisdmacrae/pail"

  on_macos do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.6/pail_darwin_arm64.tar.gz"
      sha256 "8a7c7080ff7f66bf48f469c1707869b3affb256108265ae86f365c636fa6fb24"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.6/pail_darwin_amd64.tar.gz"
      sha256 "b121401714a35eec7ec5f21e6bf2282817451e36528672a2f20e3ea5cda9d140"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.6/pail_linux_arm64.tar.gz"
      sha256 "02ab0f3f11de6d23b5a712335910b532628f44b64a3284e255480d2f560cb7e2"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.6/pail_linux_amd64.tar.gz"
      sha256 "28c3a25e2e9242a5f11dc38dd5c2993202651e2ef7e4b3743a522e286f7522c7"
    end
  end

  def install
    bin.install "pail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pail --version")
  end
end
