class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.4.1.tar.gz"
  sha256 "a6597adc8ba7c3a4ec35822c869af6cff6e5c80c5a29837e749deff587a7ed0d"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.1/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "e77691b48998875b4cc3bec924f7197660fefd98012801a0fead9f4c5fb2b14f"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.1/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "2023d547ddfc6e63f778f030e9e91b3330faab3508a5e781fd9fbe8cefc6644d"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
