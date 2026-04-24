class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.4.1.tar.gz"
  sha256 "a6597adc8ba7c3a4ec35822c869af6cff6e5c80c5a29837e749deff587a7ed0d"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.0.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "9b5641cb60ef94849e7d4c4aaad005abda6b8c908ff2362f05ac4fee3264fc52"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.0.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "0375a72ad38bc93c339b6054e4aed5283fb52730201c55590f20600e5e93a01b"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
