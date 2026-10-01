# Written by scripts/brew-formula in github.com/chrisdmacrae/pail at each release.
# Changes made here are replaced by the next one.
class Pail < Formula
  desc "Put sites and small server apps on a Pail installation at home"
  homepage "https://github.com/chrisdmacrae/pail"

  on_macos do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.10/pail_darwin_arm64.tar.gz"
      sha256 "b0e1c85967b52a50d54d70c9fabad8257ee56ac31d61c5717e5ef203692adad6"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.10/pail_darwin_amd64.tar.gz"
      sha256 "e62e37393464122988fdcdb9274353fc0e209547227c2243decca157f504f13a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.10/pail_linux_arm64.tar.gz"
      sha256 "4f54eac3a819f288dba7b457e347f6a1f1e0aba29b39cb10275f9849e4ca65e9"
    end
    on_intel do
      url "https://github.com/chrisdmacrae/pail/releases/download/v0.1.10/pail_linux_amd64.tar.gz"
      sha256 "81b6d302410f7d6793341eac470c9f4dd521411454f3917c644ed86c7170da81"
    end
  end

  def install
    bin.install "pail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pail --version")
  end
end
