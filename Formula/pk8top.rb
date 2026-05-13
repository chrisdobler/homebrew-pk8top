class Pk8top < Formula
  desc "Terminal UI for monitoring Kubernetes cluster resources"
  homepage "https://github.com/chrisdobler/pk8top"
  version "0.0.0"
  license "MIT"

  depends_on "kubernetes-cli"

  on_macos do
    on_arm do
      url "https://github.com/chrisdobler/pk8top/releases/download/v0.0.0/pk8top-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/chrisdobler/pk8top/releases/download/v0.0.0/pk8top-darwin-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/chrisdobler/pk8top/releases/download/v0.0.0/pk8top-linux-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "pk8top"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/pk8top --help")
  end
end
