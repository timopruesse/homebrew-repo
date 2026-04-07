class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  version "2.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v#{version}/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "9b5641cb60ef94849e7d4c4aaad005abda6b8c908ff2362f05ac4fee3264fc52"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v#{version}/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "0375a72ad38bc93c339b6054e4aed5283fb52730201c55590f20600e5e93a01b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v#{version}/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "825147d25a0bc16454f6717ce27543c96805e672d84d099e6a638dc39d9413d8"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
