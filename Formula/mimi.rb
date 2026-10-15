class Mimi < Formula
  desc "macOS junk and developer cache cleaner (Xcode/simulator aware)"
  homepage "https://github.com/nkwabyte/mimi"
  url "https://github.com/nkwabyte/mimi/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "84067ed84e9e4bcbd21c73457bc1e7595f0442f5bac54ed21af0aaf9c25dcc02"
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
