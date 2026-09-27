class Mimi < Formula
  desc "macOS junk and developer cache cleaner (Xcode/simulator aware)"
  homepage "https://github.com/nkwabyte/mimi"
  url "https://github.com/nkwabyte/mimi/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "27f9e08bd846016deb46ee903c296611c6fdc5bd5f682a26d66accc27811105a"
  license "MIT"

  def install
    prefix.install "bin", "lib", "libexec", "schemas"
  end

  test do
    assert_match "mimi #{version}", shell_output("#{bin}/mimi --version")
  end
end
