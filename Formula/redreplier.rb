class Redreplier < Formula
  desc "Monitor Reddit, Hacker News, X and Bluesky for keywords from your terminal"
  homepage "https://redreplier.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.1/redreplier_0.1.1_darwin_arm64.tar.gz"
      sha256 "4e65a0f96df82a70742590805900ede9ca4b4079b9ae0fa987ddfe3acff1162a"
    end
    on_intel do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.1/redreplier_0.1.1_darwin_x64.tar.gz"
      sha256 "60816a5f9a559f31ad9de4449427cc2dfeab07af21fc9afdd5cc647e424dd138"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.1/redreplier_0.1.1_linux_arm64.tar.gz"
      sha256 "05a321767bde91fd31a79e707b7e13119119447cde0ba32f240c043efe29692d"
    end
    on_intel do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.1/redreplier_0.1.1_linux_x64.tar.gz"
      sha256 "932edd0099be46166d3dfa8e60e477445003399a93a63c4999a01f2668485eae"
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
