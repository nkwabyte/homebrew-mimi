class Mimi < Formula
  desc "macOS junk and developer cache cleaner (Xcode/simulator aware)"
  homepage "https://github.com/nkwabyte/mimi"
  url "https://github.com/nkwabyte/mimi/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "435de95e6e1732941fff822ebe320acba07fe5e8a4257e557396cbf7d74756df"
  license "MIT"

  def install
    prefix.install "bin", "lib", "libexec", "schemas"
  end

  test do
    assert_match "mimi #{version}", shell_output("#{bin}/mimi --version")
  end
end
