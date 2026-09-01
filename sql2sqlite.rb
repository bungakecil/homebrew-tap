class Sql2sqlite < Formula
  desc "SQL 2 SQLite"
  homepage "https://github.com/bungakecil/sql2sqlite"
  url "https://codeload.github.com/bungakecil/sql2sqlite/tar.gz/refs/tags/0.0.1"
  sha256 "386100cd163f7b5598914cb73d44af6d5406dc85ba1b92af8304f6ad91e6db6d"
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
