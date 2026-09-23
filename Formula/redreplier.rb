class Redreplier < Formula
  desc "Monitor Reddit, Hacker News, X and Bluesky for keywords from your terminal"
  homepage "https://redreplier.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.3/redreplier_0.1.3_darwin_arm64.tar.gz"
      sha256 "09cde1d7b23115b686016d6e76157848ebb77d008b95899a4d8dc935082d2b4f"
    end
    on_intel do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.3/redreplier_0.1.3_darwin_x64.tar.gz"
      sha256 "0301b403c0e62c872028d97479040aa7e170d79ad0687f4e4a9c408f4bd319a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.3/redreplier_0.1.3_linux_arm64.tar.gz"
      sha256 "e895eae559d46a2164414f10ce9937325ab386ad493ddea078bebfa0419399ba"
    end
    on_intel do
      url "https://github.com/RedReplier/redreplier-cli/releases/download/v0.1.3/redreplier_0.1.3_linux_x64.tar.gz"
      sha256 "69759099988336027caa55bcb4990b9f9f627c1d2a345cabc0ccd8fdadbe43e4"
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
