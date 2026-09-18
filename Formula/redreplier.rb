class Redreplier < Formula
  desc "Monitor Reddit, Hacker News, X and Bluesky for keywords from your terminal"
  homepage "https://redreplier.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.2/redreplier_0.1.2_darwin_arm64.tar.gz"
      sha256 "562b381ae6f8eefcd38cc850aa652c71128cbe5ffc49344715c03ceee22bd196"
    end
    on_intel do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.2/redreplier_0.1.2_darwin_x64.tar.gz"
      sha256 "88484c1d6e1a1218c3a079d98619625b6a83d1154af331d75d308f2c835d49a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.2/redreplier_0.1.2_linux_arm64.tar.gz"
      sha256 "2f18d76c047a8959bb7ce6d2f5ce68fb344350105a18c335a9739183c6741748"
    end
    on_intel do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.2/redreplier_0.1.2_linux_x64.tar.gz"
      sha256 "4dc74d178682e2601e6b0de66935669c389e5894ada3cf6107c7be0d79a43185"
    end
  end

  def install
    bin.install "redreplier"
    bin.install_symlink bin/"redreplier" => "rr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redreplier --version")
    assert_match "redreplier", shell_output("#{bin}/rr --help")
  end
end
