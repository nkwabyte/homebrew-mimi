class Mimi < Formula
  desc "macOS junk and developer cache cleaner (Xcode/simulator aware)"
  homepage "https://github.com/nkwabyte/mimi"
  url "https://github.com/nkwabyte/mimi/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "89d067802f3108944dbaca658928e5448f7b595318ab8e369aed67740eaf51ae"
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
