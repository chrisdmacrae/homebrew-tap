# Written by scripts/brew-formula in github.com/chrisdmacrae/pail at each release.
# Changes made here are replaced by the next one.
class Pail < Formula
  desc "Put sites and small server apps on a Pail installation at home"
  homepage "https://github.com/chrisdmacrae/pail"

  on_macos do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.4/pail_darwin_arm64.tar.gz"
      sha256 "d74b42dced430c5ec351b5af542a3999c72e83a7bf89a770734ce597813b9a53"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.4/pail_darwin_amd64.tar.gz"
      sha256 "2de4fda47efa3c19c199b9bb1cb52c96a5684286075a0ed85375bbeffd1b445c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.4/pail_linux_arm64.tar.gz"
      sha256 "537305d8d8e0a317b40646f68a4f84d48b4cff867d1c958bef25ab3462e2c23f"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.4/pail_linux_amd64.tar.gz"
      sha256 "0ff7389d73fc285b066f5fb03365a938d589fffcc2bb59790b3e1053c9cb9822"
    end
  end

  def install
    bin.install "pail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pail --version")
  end
end
