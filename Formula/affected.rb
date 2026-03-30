class Affected < Formula
  desc "Language-agnostic affected package detection and task execution for monorepos"
  homepage "https://github.com/Rani367/affected"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rani367/affected/releases/download/v#{version}/affected-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_AARCH64_MACOS"
    else
      url "https://github.com/Rani367/affected/releases/download/v#{version}/affected-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64_MACOS"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Rani367/affected/releases/download/v#{version}/affected-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_AARCH64_LINUX"
    else
      url "https://github.com/Rani367/affected/releases/download/v#{version}/affected-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_X86_64_LINUX"
    end
  end

  def install
    bin.install "affected"
  end

  test do
    assert_match "affected", shell_output("#{bin}/affected --version")
  end
end
