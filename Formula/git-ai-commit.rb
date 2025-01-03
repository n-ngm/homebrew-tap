class GitAiCommit < Formula
  desc "This script is a git subcommand that generates a commit message using ChatGPT"
  homepage "https://github.com/n-ngm/git-ai-commit"
  url "https://github.com/n-ngm/git-ai-commit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7eb6aef9d31b550677e524b2ee75a11f7b31583e661110bccc65f55e3a8a7e0a"
  license "MIT"

  def install
    bin.install "git-ai-commit"
  end

  # `brew test git-ai-commit`
  test do
    assert_match "Usage", shell_output("#{bin}/git-ai-commit --help")
  end
end
