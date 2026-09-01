class Sql2sqlite < Formula
  desc "SQL 2 SQLite"
  homepage "https://github.com/bungakecil/sql2sqlite"
  url "https://codeload.github.com/bungakecil/sql2sqlite/tar.gz/refs/tags/0.0.1"
  sha256 "a68384951532789d5cd4b8acd72abd2ada097320bd960ead2ab71c841ddc917f"
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/sql2sqlite'
  end
  test do
    system "#{bin}/sql2sqlite", "--version"
  end
end
