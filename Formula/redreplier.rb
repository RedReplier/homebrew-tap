class Redreplier < Formula
  desc "Monitor Reddit, Hacker News, X and Bluesky for keywords from your terminal"
  homepage "https://redreplier.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.0/redreplier_0.1.0_darwin_arm64.tar.gz"
      sha256 "d07093037b696aa3f62a89d46f22a5a0add7e9069fd9d4cdf6a2ee1d3ea9f77a"
    end
    on_intel do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.0/redreplier_0.1.0_darwin_x64.tar.gz"
      sha256 "83698890c17a9b56889ce008607058fe76a7e8771176f60530f89057c3aab275"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.0/redreplier_0.1.0_linux_arm64.tar.gz"
      sha256 "eeeee759f0c491ab1a69321a0f609b7d6731dae51525615aa6446a8d247de737"
    end
    on_intel do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.0/redreplier_0.1.0_linux_x64.tar.gz"
      sha256 "dc420a2132bb5ecdd016a58556c0d94846fa701b0a4ae160dc72b8c66fe46b21"
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
