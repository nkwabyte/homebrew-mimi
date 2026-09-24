class Mimi < Formula
  desc "macOS junk and developer cache cleaner (Xcode/simulator aware)"
  homepage "https://github.com/nkwabyte/mimi"
  url "https://github.com/nkwabyte/mimi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "07a0e0ac49d485e32b23f43f548fcb6e485bf22d777d8bcad1a546bea6312309"
  license "MIT"

  def install
    prefix.install "bin", "lib", "schemas"
  end

  test do
    assert_match "mimi", shell_output("#{bin}/mimi --help")
  end
end
