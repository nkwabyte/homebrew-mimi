class Mimi < Formula
  desc "macOS junk and developer cache cleaner (Xcode/simulator aware)"
  homepage "https://github.com/nkwabyte/mimi"
  url "https://github.com/nkwabyte/mimi/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "a18bb821c5aca64664f76b02b34f8e74115cbae4df7c21eadb7cfef8d89dd5ca"
  license "MIT"

  def install
    prefix.install "bin", "lib", "libexec", "schemas"
    bash_completion.install "completions/mimi.bash" => "mimi"
    zsh_completion.install "completions/_mimi"
    man1.install "man/mimi.1"
  end

  test do
    assert_match "mimi #{version}", shell_output("#{bin}/mimi --version")
  end
end
